using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class MemberCenter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {       
        if (Session["Login"] == "1")//用Session取得是否為登入的狀態，若為登入，則顯示會員資料，否則顯示註冊畫面。
        {
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                    "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
            cn.Open();

            SqlCommand cmd = new SqlCommand(" SELECT * FROM EC08Member WHERE Account = '" + Session["uid"] + "'", cn);
            SqlDataReader dr = cmd.ExecuteReader();     
            
            MultiView1.ActiveViewIndex = 1;
            LKB_LOGIN.BackColor = System.Drawing.Color.FromName("#FFFDD0");
            LKB_LOGIN.Text=Session["uid"]+"您好，登出";
            if (dr.Read())
            {
                Literal1.Text = dr["Account"].ToString();
                Literal2.Text = dr["Name"].ToString();
                Literal3.Text = dr["Sex"].ToString();
                Literal4.Text = dr["Birthday"].ToString();
                Literal5.Text = dr["Tel"].ToString();
                Literal6.Text = dr["Email"].ToString();
                Literal7.Text = dr["Address"].ToString();
            }
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
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
            Response.Redirect(Request.FilePath);//重新整理頁面。
        }
        else
        {
            Response.Redirect("EC08LoginData.aspx");//否則轉址到登入介面。
        }
    }
    protected void LinkButton9_Click1(object sender, EventArgs e)
    {
        Response.Redirect("EC08Prepay.aspx");
    }
    protected void btn_register_Click(object sender, EventArgs e)
    {//若資料符合格式且同意合約書，則連結SQL進行註冊。
        try
        {
            if (ckb.Checked == true)
            {
                Literal8.Text = "";
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = (@"Data Source=203.64.129.67,1433;" + "initial Catalog=EC;" +
                                        "Persist Security Info=True;" + "User ID=EC08;" + "Password=cbf104029.");
                cn.Open();
                SqlCommand cmd1 = new SqlCommand("INSERT INTO EC08Member(Account,Name,Sex,Birthday,Tel,Email,Address)" +
                    "VALUES(@id,@name,@sex,@birth,@tel,@email,@add)", cn);
                cmd1.Parameters.Add(new SqlParameter("@id", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@name", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@sex", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@birth", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@tel", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@email", SqlDbType.NVarChar));
                cmd1.Parameters.Add(new SqlParameter("@add", SqlDbType.NVarChar));
                cmd1.Parameters["@id"].Value = txt_ID.Text;
                cmd1.Parameters["@name"].Value = txt_Name.Text;
                cmd1.Parameters["@sex"].Value = RadioButtonList1.SelectedValue;
                cmd1.Parameters["@birth"].Value = txt_birth.Text;
                cmd1.Parameters["@tel"].Value = txt_phone.Text;
                cmd1.Parameters["@email"].Value = txt_Mail.Text;
                cmd1.Parameters["@add"].Value = txt_add.Text;
                cmd1.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("INSERT INTO EC08LoginData(Account,Passwd)" + "VALUES(@id,@pwd)", cn);
                cmd2.Parameters.Add(new SqlParameter("@id", SqlDbType.NVarChar));
                cmd2.Parameters.Add(new SqlParameter("@pwd", SqlDbType.NVarChar));
                cmd2.Parameters["@id"].Value = txt_ID.Text;
                cmd2.Parameters["@pwd"].Value = txt_pwd.Text;
                cmd2.ExecuteNonQuery();

                cn.Close();

                Response.Redirect("EC08LoginData.aspx");
            }
            else 
            {
                Literal8.Text = "請勾選同意以上條款 !";
            }         
        }
        catch(Exception)
        {
            Response.Redirect("EC08LoginData.aspx");
            Response.Write("<Script language='Javascript'>");
            Response.Write("alert('請確實依照格式填寫資料！')");
            Response.Write("</" + "Script>");           
        }
    }
}  