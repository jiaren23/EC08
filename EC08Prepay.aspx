<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08Prepay.aspx.cs" Inherits="EC08Prepay" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .total {
            margin-top: 20%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <asp:LinkButton ID="LKB_HOME" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton1_Click" >  首頁  </asp:LinkButton>   
                    &nbsp;<asp:LinkButton ID="LKB_PRODUCT" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LKB_PRODUCT_Click">  商品資訊  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_CART" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton3_Click">  購物車  </asp:LinkButton>         
                    &nbsp;<asp:LinkButton ID="LKB_PREPAY" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton9_Click1">  預付卡  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_MEMBER" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LinkButton4_Click1">  會員中心  </asp:LinkButton>                 
                    &nbsp;<asp:LinkButton ID="LKB_LOGIN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton8_Click1">  登入  </asp:LinkButton>      
                    &nbsp; 
                </div>
            </div> 
        <div class="total">
            <h1>預付卡功能建置中</h1>
        </div>
    </form>
</body>
</html>