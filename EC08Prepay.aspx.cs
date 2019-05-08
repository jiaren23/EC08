using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class EC08Prepay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == "1")//用Session取得是否為登入的狀態。
        {
            LKB_LOGIN.BackColor = System.Drawing.Color.FromName("#FFFDD0");
            LKB_LOGIN.Text = Session["uid"] + "您好，登出";
        }
        else
        {
            LKB_LOGIN.Text = "登入";
        }
    }
    protected void ImgBtn_LOGO_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁。
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Index.aspx");//轉址到首頁。
    }
    protected void LKB_PRODUCT_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08Product.aspx");//轉址到商品資訊。
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("EC08ShoppingCart.aspx");//轉址到購物車。
    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EC08Member.aspx");//轉址到會員中心。
    }
    protected void LinkButton8_Click1(object sender, EventArgs e)
    {
        if (Session["Login"] == "1")//若為登入狀態，按下此鈕則登出。
        {
            Session["Login"] = "0";
            Response.Redirect(Request.FilePath);
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
}