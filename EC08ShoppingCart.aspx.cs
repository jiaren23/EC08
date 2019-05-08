using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Session["Cartnumber"] = Session["uid"];//從資料庫撈取與登入者相關的購物資訊。
        if (Session["Login"] == "1")//用Session取得是否為登入的狀態。
        {
            LKB_LOGIN.BackColor = System.Drawing.Color.FromName("#FFFDD0");
            LKB_LOGIN.Text = Session["uid"] + "您好，登出";
        }
        else
        {
            LKB_LOGIN.Text = "登入";
            GridView1.Visible = false;
            btn_shopping.Visible = false;
            btn_buy.Visible = false;
        }        
    }        
    protected void ImgBtn_LOGO_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁
    }
    protected void LKB_PRODUCT_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Product.aspx");//轉址到商品資訊
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08ShoppingCart.aspx");//轉址到購物車
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EC08Member.aspx");        //轉址到會員中心
    }
    protected void LinkButton8_Click1(object sender, EventArgs e)
    {
        if (Session["Login"] == "1")//若為登入狀態，按下此鈕則登出。
        {
            Session["Login"] = "0";
            Response.Redirect(Request.FilePath);//重新整理網頁。
        }
        else
        {
            Response.Redirect("EC08LoginData.aspx");//否則轉址到登入介面。
        }
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EC08Prepay.aspx");//轉址到預付卡。
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {//刪除不要買的產品
        if (e.CommandName == "Product_Del")
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                    "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
            cn.Open();

            SqlCommand cmd = new SqlCommand("DELETE FROM EC08ShoppingCart WHERE Pnumber=@PID AND Cartnumber=@CARTID", cn);
            cmd.Parameters.Add("@PID", SqlDbType.NVarChar).Value = e.CommandArgument;
            cmd.Parameters.Add("@CARTID", SqlDbType.NVarChar).Value = Session["uid"];
            cmd.ExecuteNonQuery();

            cmd.Cancel();
            cmd.Dispose();
            cn.Close();

            Response.AddHeader("Refresh", "0");
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {//顯示小計與總和。
        double total = 0, bonus = 0;
        if (e.Row.RowType == DataControlRowType.DataRow)
        {           
            e.Row.Cells[8].Text = (int.Parse(e.Row.Cells[6].Text) * int.Parse(e.Row.Cells[7].Text)).ToString();
            for(int i = 0; i <= GridView1.Rows.Count; i++)
            {
                total += int.Parse(e.Row.Cells[8].Text) ;//計算總金額
                ltl_total.Text = "總金額: " + total.ToString() + "&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;";
            }

            Literal1.Text = "紅利點數: ";
            bonus =Convert.ToInt32( Math.Ceiling(total / 100));//計算紅利點數
            ltl_bonus.Text = bonus.ToString();
        }   
    }
    protected void btn_shopping_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Product.aspx");//轉址到商品頁面繼續購物。
    }
}