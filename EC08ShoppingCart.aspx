<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>福克斯 Focus - 購物車</title>
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
            .cart {
                margin-top: 10%;
                text-align: -webkit-center;
            }
            .totalbonus{
                text-align:center;
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
            <div class="cart">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" DataKeyNames="Cartnumber" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="Cartnumber" HeaderText="購物車編號" SortExpression="Cartnumber" />
                        <asp:BoundField DataField="Pnumber" HeaderText="商品編號" SortExpression="Pnumber" />
                        <asp:TemplateField HeaderText="商品圖片">
                            <FooterTemplate>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                <asp:Literal ID="ltl_show" runat="server" Text="總計"></asp:Literal>
                            </FooterTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Imgurl") %>' Width="120px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Pname" HeaderText="商品名稱" SortExpression="Pname" />
                        <asp:BoundField DataField="Size" HeaderText="規格" SortExpression="Size" />
                        <asp:BoundField DataField="Color" HeaderText="顏色" SortExpression="Color" />
                        <asp:BoundField DataField="Price" HeaderText="價格" SortExpression="Price" />
                        <asp:BoundField DataField="Quantity" HeaderText="數量" SortExpression="Quantity"/>
                        <asp:TemplateField HeaderText="小計">
                            <FooterTemplate>
                                <asp:Literal ID="ltl_total" runat="server"></asp:Literal>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="刪除">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" BackColor="Black" ForeColor="White" Text="刪除" CommandArgument='<%# Eval("Pnumber") %>' CommandName="Product_Del" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [EC08ShoppingCart] WHERE ([Cartnumber] LIKE '%' + @Cartnumber + '%')">
                    <SelectParameters>
                        <asp:SessionParameter Name="Cartnumber" SessionField="Cartnumber" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>      
                <span style="background-color:white; font-size:24px;font-weight:900; color:black">
                    <asp:Literal ID="ltl_total" runat="server"></asp:Literal>
                    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                </span>
                <span style="background-color:white; font-size:24px;font-weight:900; color:red">
                    <asp:Literal ID="ltl_bonus" runat="server"></asp:Literal>
                </span>     
                <br />
                <br />
                <asp:Button ID="btn_shopping" runat="server" BackColor="Black" Font-Size="Large" ForeColor="White" Text="還沒買夠，繼續購物！" OnClick="btn_shopping_Click" />
                 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:Button ID="btn_buy" runat="server" BackColor="Black" Font-Size="Large" ForeColor="White" Text="結帳去！" />
            </div>
    </form>
</body>
</html>