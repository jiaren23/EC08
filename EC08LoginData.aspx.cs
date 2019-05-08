using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Login2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁
    }
    protected void ImgBtn_LOGO_Click(object sender, ImageClickEventArgs e)
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
        Response.Redirect("EC08Member.aspx");//轉址到會員中心
    }
    protected void LinkButton8_Click1(object sender, EventArgs e)
    {
	//若為登入狀態，按下此鈕則登出，否則轉址到登入介面進行登入。
        if (Session["Login"] == "1")
        {
            Session["Login"] = "0";
            Response.Redirect(Request.FilePath);//重新整理頁面。
        }
        else
        {
            Response.Redirect("EC08LoginData.aspx");
        }
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EC08Prepay.aspx");//轉址到預付卡。
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   //與SQL資料庫連結，並比對使用者輸入之資料是否符合；若符合則登入，否則顯示錯誤提示訊息。
        
            string uid = txtUser.Text;
            string pwd = txtPwd.Text;

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                    "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
            cn.Open();
            SqlCommand cmd = new SqlCommand(" SELECT * FROM EC08LoginData WHERE Account = '" + uid + "'AND Passwd = '" + pwd + "' ", cn);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (uid == dr["Account"].ToString() && pwd == dr["Passwd"].ToString())
                    {
                        Session["Login"] = "1";
                        Session["uid"] = dr["Account"];
                        Response.Redirect("EC08Index.aspx");
                    }
                    else
                    {
                        Response.Write("<Script language='Javascript'>");
                        Response.Write("alert('請輸入正確的帳號密碼！')");
                        Response.Write("</" + "Script>");
                        Session["Login"] = "0";
                    }
                }
            }
            dr.Close();
            cn.Close();     
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁。
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Member.aspx");//轉址到會員中心。
    }
}
