using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//private object Response;

public partial class Recommend : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Elogin"] == "1")
        {
            Literal1.Text = Session["Euid"] + "您好!";
           Label2.Visible = true;
        }
        else
        {
           Label2.Visible = false;
        }

    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("boffice.aspx");//轉址到後台管理主選單
    }
}