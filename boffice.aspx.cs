using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class boffice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Elogin"] == "1")
        {
            LinkButton1.Text = Session["Euid"] + "您好，登出";           
        }
        else
        {
            LinkButton1.Text = "員工登入";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Employee.aspx");//轉址到員工管理。
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Emplog.aspx");//轉址到登入/登出。
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Recommend.aspx");//轉址到推薦人管理。
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["Elogin"] == "1")//若為登入狀態，按下此鈕則登出。
        {
            Session["Elogin"] = "0";
            Response.Redirect(Request.FilePath);//重新整理網頁。
        }
        else
        {
            Response.Redirect("Emplog.aspx");//否則轉址到登入介面。
        }
    }
}