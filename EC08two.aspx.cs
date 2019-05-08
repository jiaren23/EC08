using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EC08two : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)//用Session取得是否為登入的狀態。
    {
        DataList1.Visible = false;
        DataList2.Visible = true;    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("EC08Index.aspx");//轉址到首頁
    }
    protected void ImgBtn_LOGO_Click(object sender, ImageClickEventArgs e)
    {
        // Response.Redirect("EC08Index.aspx");//轉址到首頁
    }
    protected void LKB_PRODUCT_Click(object sender, EventArgs e)
    {
        //Response.Redirect("EC08Product.aspx");//轉址到商品資訊
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        // Response.Redirect("EC08ShoppingCart.aspx");//轉址到購物車
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        //Response.Redirect("EC08Member.aspx");//轉址到會員中心
    }
    protected void LinkButton8_Click1(object sender, EventArgs e)
    {
        if (Session["Login"] == "1")//若為登入狀態，按下此鈕則登出，否則轉址到登入介面進行登入。
        {
            Session["Login"] = "0";
           // Response.Redirect(Request.FilePath);  
        }
        else
        {
            //Response.Redirect("EC08LoginData.aspx"); //轉址到登入
        }
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        // Response.Redirect("EC08Prepay.aspx");//轉址到預付卡

    }
    protected void Product_I_Click(object sender, ImageClickEventArgs e)
    {
        DataList1.Visible = true;
        DataList2.Visible = false;
    }
    protected void Product_II_Click(object sender, ImageClickEventArgs e)
    {
        DataList1.Visible = false;
        DataList2.Visible = true;
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["Login"] == "1")
        {
            try
            {

                string Pnumber = e.CommandArgument.ToString();

                Label lblpnumber = (Label)e.Item.FindControl("PnumberLabel");
                Label lblpname = (Label)e.Item.FindControl("PnameLabel");
                Label lblimgurl = (Label)e.Item.FindControl("ImgurlLabel");
                Label lblsize = (Label)e.Item.FindControl("SizeLabel");
                Label lblcolor = (Label)e.Item.FindControl("ColorLabel");
                TextBox txt_quan = (TextBox)e.Item.FindControl("txt_quan");
                Label lblprice = (Label)e.Item.FindControl("PriceLabel");

                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                        "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
                cn.Open();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO EC08ShoppingCart(Cartnumber,Pnumber,Imgurl,Pname,Size,Color,Quantity,Price)" +
                                                 "VALUES(@cartnumber,@pnumber,@imgurl,@pname,@size,@color,@quantity,@price)", cn);

                cmd1.Parameters.Add(new SqlParameter("@cartnumber", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@pnumber", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@imgurl", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@pname", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@size", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@color", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@quantity", SqlDbType.Int));
                cmd1.Parameters.Add(new SqlParameter("@price", SqlDbType.Int));
                cmd1.Parameters["@cartnumber"].Value = Session["uid"];
                cmd1.Parameters["@pnumber"].Value = lblpnumber.Text.ToString();
                cmd1.Parameters["@imgurl"].Value = lblimgurl.Text.ToString();
                cmd1.Parameters["@pname"].Value = lblpname.Text.ToString();
                cmd1.Parameters["@size"].Value = lblsize.Text.ToString();
                cmd1.Parameters["@color"].Value = lblcolor.Text.ToString();
                cmd1.Parameters["@quantity"].Value = txt_quan.Text.ToString();
                cmd1.Parameters["@price"].Value = lblprice.Text.ToString();
                cmd1.ExecuteNonQuery();
                cn.Close();

                Response.Redirect("EC08ShoppingCart.aspx");
            }
            catch
            {
                Response.Write("<Script language='Javascript'>");
                Response.Write("alert('請輸入欲購買數量！')");
                Response.Write("</" + "Script>");
            }
        }
        else
        {
            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('若要購物，請先登入！')");
            Response.Write("</" + "Script>");
          //  Response.Redirect("EC08LoginData.aspx");
        }
    }
}