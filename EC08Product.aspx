<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08Product.aspx.cs" Inherits="TESE" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">   
    <title>福克斯 Focus - 商品資訊</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        body {
            background-image: url(images/bg1.jpg);
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: top;
            background-size: cover;
        }
        .list {
            text-align: center;
            position: absolute;
            top: 10px;
            right: 200px;
            box-sizing: border-box;
            height: 30px;
            background: #F5F5F5;
        }
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
            .ribbon {
            text-align: center;
            margin-top: 80px;
            margin-right: 20%;
            margin-left: 20%;
        }
        .product {
            text-align: -webkit-center;
        }
        .footer {
            /* height: 60px; */
            position: absolute;
            margin-top: 0px;
            background-color: #B0E0E6;
            right: 0;
            bottom: auto;
            left: 0;
        }
    </style> 
    <link rel="icon" href="images/logo2.jpg" type="images/logo2.jpg"/> 
    <link rel="shortcut icon" href="images/logo2.jpg" type="images/logo2.jpg"/>
</head>
    <body>
        <form id="form1" runat="server">    
            <div class="list"  >
                <div class="menu">                   
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
            <br/>
            <br/>
            <br/>
            <div class="ribbon">  
                <asp:ImageButton ID="Product_I" runat="server" ImageUrl="images/ribbon_img3.png" Width="200" OnClick="Product_I_Click"/>
                <asp:ImageButton ID="Product_II" runat="server" ImageUrl="images/ribbon_img4.png" Width="200" OnClick="Product_II_Click"/>
            </div>
            <br/>
            <br/>
            <br/>
            <br/>
            <br/>            
            <div class="product">
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSourceProduct" EnableViewState="False" ForeColor="Black" GridLines="Horizontal" RepeatColumns="2" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imgurl") %>' Width="300px" />
                    <br />
                    商品編號:
                    <asp:Label ID="PnumberLabel" runat="server" Text='<%# Eval("Pnumber") %>' />
                    <br />
                    商品名稱:
                    <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
                    <br />
                    規格:
                    <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                    <br />
                    顏色:
                    <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                    <br />
                    數量:<asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFFCC" Font-Bold="False" Font-Italic="False" Font-Names="Adobe Gothic Std B" Font-Strikeout="False" Font-Underline="False" ForeColor="#0099FF" Width="54px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    價格:
                    <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    <asp:Label ID="ImgurlLabel" runat="server" Text='<%# Eval("Imgurl") %>' Visible="False" />
                    <br />                    
                    <asp:Button runat="server" CommandArgument='<%# Eval("Pnumber") %>' Text="加入購物車" />
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSourceProduct" runat="server" ConnectionString="<%$ ConnectionStrings:ECConnectionString %>" SelectCommand="SELECT * FROM [EC08Product1]"></asp:SqlDataSource>
            </div>                    
            <div class="product">
                <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EnableViewState="False" ForeColor="Black" GridLines="Horizontal" RepeatColumns="2" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imgurl") %>' Width="300px" />
                        <br />
                        商品編號:
                        <asp:Label ID="PnumberLabel" runat="server" Text='<%# Eval("Pnumber") %>' />
                        <br />
                        商品名稱:
                        <asp:Label ID="PnameLabel" runat="server" Text='<%# Eval("Pname") %>' />
                        <br />
                        規格:
                        <asp:Label ID="SizeLabel" runat="server" Text='<%# Eval("Size") %>' />
                        <br />
                        顏色:
                        <asp:Label ID="ColorLabel" runat="server" Text='<%# Eval("Color") %>' />
                        <br />
                        數量:<asp:DropDownList ID="DropDownList1" runat="server" BackColor="#FFFFCC" Font-Bold="False" Font-Italic="False" Font-Names="Adobe Gothic Std B" Font-Strikeout="False" Font-Underline="False" ForeColor="#0099FF" Width="54px">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem Value="3"></asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        價格:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <asp:Label ID="ImgurlLabel" runat="server" Text='<%# Eval("Imgurl") %>' Visible="False" />
                        <br />                    
                        <asp:Button runat="server" CommandArgument='<%# Eval("Pnumber") %>' Text="加入購物車" />
                        <br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECConnectionString %>" SelectCommand="SELECT * FROM [EC08Product2]"></asp:SqlDataSource>
            </div>
            <footer class="footer" align="center">
                <div class="row">
                    <div class="basic_info">
                        <br />
                        <img src="images/logo2.jpg" style="height: 85px; width: 74px" />© EC08   屏東縣屏東市民生東路51號 (08)- 723 8700&nbsp; 市民生東路51號 (08)- 723 8700&nbsp; <a href="http://www.nptu.edu.tw/bin/home.php">http://www.nptu.edu.tw/bin/home.php</a>
                        <br />
                        <br />
                        <br />
                    </div> 
                </div>
            </footer>
        </form>
    </body>
</html>