using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Emplog : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    } 
    protected void Button1_Click(object sender, EventArgs e)
    {   //與SQL資料庫連結，並比對使用者輸入之資料是否符合；若符合則登入，否則顯示錯誤提示訊息。

        string uid = txtUser.Text;
        string pwd = txtPwd.Text;

        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
        cn.Open();
        SqlCommand cmd = new SqlCommand(" SELECT * FROM EC08Emplog WHERE Eacc = '" + uid + "'AND Epwd = '" + pwd + "' ", cn);
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            while (dr.Read())
            {
                if (uid == dr["Eacc"].ToString() && pwd == dr["Epwd"].ToString())
                {
                    Session["Elogin"] = "1";
                    Session["Euid"] = dr["Eacc"];
                    Response.Redirect("boffice.aspx");
                }
                else
                {
                    Response.Write("<Script language='Javascript'>");
                    Response.Write("alert('請輸入正確的帳號密碼！')");
                    Response.Write("</" + "Script>");
                    Session["Elogin"] = "0";
                }
            }
        }
        dr.Close();
        cn.Close();
    }
   
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("boffice.aspx");
    }
}