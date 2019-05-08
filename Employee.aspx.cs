using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Employee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Elogin"] == "1")
        {
            Literal1.Text = Session["Euid"] + "您好!";
            GridView1.Visible = true;
        }
        else
        {
            GridView1.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("boffice.aspx");//轉址到後台管理主選單
    }
}