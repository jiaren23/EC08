<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08LoginData.aspx.cs" Inherits="Login2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <style type="text/css">
            .list {
                text-align: center;
                position: absolute;
                top: 10px;
                right: 200px;
                box-sizing: border-box;
                height: 30px;
                background: #F5F5F5;
            }
            body {
                background: url(images/bg3.jpg) center center fixed no-repeat;
                text-align: center;
                background-size: cover;
                z-index: -1;
            }
            .view {
                text-align: center;
                z-index: 1;
            }
            .logo {
                text-align: left;
            }
            .login {
                margin: 10% auto auto;
                font-family: 微軟正黑體;
                box-sizing: border-box;
                height: 165px;
                background: #FFF;
            }
        </style> 
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>福克斯 Focus - 會員登入</title>
        <link rel="icon" href="images/logo2.jpg" type="images/logo2.jpg"/> 
        <link rel="shortcut icon" href="images/logo2.jpg" type="images/logo2.jpg"/>
    </head>
    <body>
        <form id="form1" runat="server" defaultbutton="Button1">    
            <div class="list"  >
                <div class="menu">
                    <style type="text/css">
                        div.menu {
                            position: fixed;
                            background: #f2f2f2;
                            width: 1093px;
                            padding: 0px;
                            margin: 0px auto;
                            opacity: 0.9;
                            z-index: 100;
                            left: 187px;
                            right: 174px;
                            top: 5px;
                            height: 104px;
                        }
                        div.menu ul {                              
                            display: block;                            
                            margin: 5px;                            
                            width: 1400px;                            
                            height: 62px;                            
                            margin: auto;                            
                            position: relative;                            
                            font-size: 12px;                            
                            top: -176px;                            
                            left: -84px;
                        }
                        .page_home .head_01 {
                            height: 320px;
                        }
                    </style>
                    <asp:ImageButton ID="ImgBtn_LOGO" runat="server" ImageUrl="images/FOCUS LOGO.png"  OnClick="ImgBtn_LOGO_Click" Height="105px" align="left" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LKB_HOME" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton1_Click">  首頁  </asp:LinkButton>   
                    &nbsp;<asp:LinkButton ID="LKB_PRODUCT" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LKB_PRODUCT_Click">  商品資訊  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_CART" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton3_Click">  購物車  </asp:LinkButton>                                       
                    &nbsp;<asp:LinkButton ID="LKB_PREPAY" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton9_Click1">  預付卡  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_MEMBER" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LinkButton4_Click1">  會員中心  </asp:LinkButton>                 
                    &nbsp;<asp:LinkButton ID="LKB_LOGIN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton8_Click1">  登入  </asp:LinkButton>                      
                </div>
            </div>      
            <div class="login">
                <h2 > 請登入您的帳號與密碼 </h2>
                <asp:Label ID="lblUser" runat="server" Text="帳號  "></asp:Label>
                <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="lblPwd" runat="server" Text="密碼  "></asp:Label>
                <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" BackColor="Black" BorderColor="White" BorderStyle="None" CssClass="view" ForeColor="White" />
                &nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="回首頁" OnClick="Button2_Click" BackColor="Black" BorderColor="White" BorderStyle="None" ForeColor="White" />
                &nbsp;&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="Black" BorderColor="White" BorderStyle="None" ForeColor="White" OnClick="Button4_Click" Text="去註冊" />
            </div>
        </form>
    </body>
</html>