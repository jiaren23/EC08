<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08Member.aspx.cs" Inherits="MemberCenter" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <style type="text/css">
            body {
                background: url(images/bg5.jpg) center center fixed no-repeat;
                text-align: center;
                background-size: cover;
                z-index: -1;
            }
            .list {
                text-align: center;
            }
            .view {
                 margin: 10% auto auto;
                text-align: center;
                z-index: 1;
                font-family: 微軟正黑體;
            }
            .logo {
                text-align: left;
            }
            table {
                margin-left: auto;
                margin-right: auto;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>福克斯 Focus - 會員註冊</title>
        <link rel="icon" href="images/logo2.jpg" type="images/logo2.jpg"> 
        <link rel="shortcut icon" href="images/logo2.jpg" type="images/logo2.jpg">
    </head>
    <body>
        <form id="form1" runat="server" defaultbutton="btn_register">
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
            <div class="view"> 
                <asp:MultiView ID="MultiView1" runat="server"> 
                    <asp:View ID="View1" runat="server"> 
                        <h2> 歡迎註冊您的會員資料</h2>
                        <table border="0">                            
                            <tr>
                                <td align="left"><asp:Label ID="lbl_ID" runat="server" Text="會員帳號"></asp:Label></td>
                                <td><asp:TextBox ID="txt_ID" runat="server" placeholder="輸入範例:CBF104000。" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rge_ID" runat="server" ControlToValidate="txt_ID" Display="Dynamic" ErrorMessage="前3碼為大寫英文+後6~9碼阿拉伯數字！" ForeColor="Red" ValidationExpression="[A-Z]{3}[0-9]{6,10}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_Name" runat="server" Text="姓名"></asp:Label></td>
                                <td><asp:TextBox ID="txt_Name" runat="server" placeholder="請輸入姓名" Width="200px"></asp:TextBox></td>                            
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="Label1" runat="server" Text="性別"></asp:Label></td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="20px" RepeatDirection="Horizontal" RepeatLayout="Flow" Width="150px">
                                        <asp:ListItem>男</asp:ListItem>
                                        <asp:ListItem>女</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_birth" runat="server" Text="生日"></asp:Label></td>
                                <td><asp:TextBox ID="txt_birth" runat="server" placeholder="1911/01/01" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rge_Birth" runat="server" ControlToValidate="txt_birth" Display="Dynamic" ErrorMessage="輸入格式為yyyy/mm/dd。" ForeColor="Red" ValidationExpression="\d{4}/\d{2}/\d{2}$"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_Mail" runat="server" Text="E-mail"></asp:Label></td>
                                <td><asp:TextBox ID="txt_Mail" runat="server" placeholder="輸入範例:nptuec08@gmail.com" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rge_Mail" runat="server" ControlToValidate="txt_Mail" Display="Dynamic" ErrorMessage="請填入正確信箱格式。" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_pwd" runat="server" Text="會員密碼"></asp:Label></td>
                                <td><asp:TextBox ID="txt_pwd" runat="server" placeholder="輸入範例:cbf104000。" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rge_Pwd" runat="server" ControlToValidate="txt_pwd" Display="Dynamic" ErrorMessage="前3碼為小寫英文+後6~9碼阿拉伯數字！" ForeColor="Red" ValidationExpression="[a-z]{3}[0-9]{6,10}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_pwd_check" runat="server" Text="密碼確認"></asp:Label></td>
                                <td><asp:TextBox ID="txt_pwd_check" runat="server" placeholder="請再一次輸入密碼" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_phone" runat="server" Text="手機號碼"></asp:Label></td>
                                <td><asp:TextBox ID="txt_phone" runat="server" placeholder="輸入範例:0953666512。" Width="200px"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator ID="rge_Phone" runat="server" ControlToValidate="txt_phone" Display="Dynamic" ErrorMessage="請輸入正確的手機號碼！" ForeColor="Red" ValidationExpression="[09]{2}[0-9]{8}"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="lbl_add" runat="server" Text="住址"></asp:Label></td>
                                <td><asp:TextBox ID="txt_add" runat="server" placeholder="請輸入通訊地址。" Width="200px"></asp:TextBox></td>
                            </tr>                          
                        </table>      
                        <br/>        
                        <td colspan="3" style="text-align: center">
                            <textarea id="TextArea1" readonly="readonly" style="overflow-x: hidden; height: 250px; width: 44%;">
1. 網站使用條款
歡迎來到福克斯網站商店。我們在下列條款的範圍内向您提供資訊。如果您訪問本網站，您將接受協議。請仔細閲讀該協議。
本協議適用于使用者和福克斯有限公司之間。您將在福克斯的授權下訪問本網站。
福克斯保留隨時對本協議修改的權利。當您進行購買或使用本網站時，您的權利將遵循本協議當前的最新内容。如您不贊同原有或修改後的條款，請不要使用本網站。
本協議附屬於本網站的"隱私權說明"。為避免爭議，當本協議和"隱私權保護方針"内容發生衝突時將遵循本協議。如您對自己在本協議中的權利存在疑問，請通過以下方式聯絡我們。
2. 網站登錄
福克斯授予您有限權力登錄和利用本網站，在沒有得到福克斯明確的書面同意的情況下，不得允許下載或修改本網站及其部分内容。行使權不適用于任何將本網站及其内容轉賣或用於商業用途的行爲；或者任何收集或利用本公司商品目錄、描述及價格的行爲；或者任何轉載本網站及其内容的行爲；或者任何利用本網站的資料收集、robots、相似數據的收集及調取工具的行爲。在沒有得到福克斯明確的書面同意的情況下，任何對本網站及其部分内容的複製、販賣、轉賣、訪問或商業利用的行爲都是不被允許的。在沒有得到東明數位明確的書面同意的情況下，框取或利用框取技術對任何對本公司商標、LOGO、所有權資訊（包括圖像、文字、網頁排版、表格）及其關聯公司（包括母公司及其下屬公司）進行框取的行爲都是不被允許的。任何越權使用都將導致福克斯終結對您的允許或授權。
3. 商標和服務商標
除非另有説明，所有包括在本網站内的名稱、圖形、設計、LOGO、網頁標題、按鈕圖標、文字、商業標記、商業外觀和服務名稱均為福克斯及其授權者、贊助商或供應商的商標，並且受到商標註冊保護法保護。不得以任何可能對東明數位造成混淆、詆毀或有損福克斯信譽的方式使用本商標。
福克斯及其LOGO在不受限制的條件下屬於福克斯及其關聯企業的註冊商標。對福克斯任何商標的侵權都是不被允許的。
4. 版權所有
該網站上所有内容，包括產品設計（包括任何及所有相關的附屬材料）均屬於福克斯及其授權者，並且受到版權法和/或外觀設計專利保護。除了出於個人非營利性目的的使用，您不得通過電子郵件或其他任何方式使用、展示、複製、轉發、修改、散布、傳播、出售、出版、創造衍生產品、廣播、發行、展示或以任何方式利用全部或部分網站内容。在沒有得到福克斯明確書面協議的情況下不得使用任何產品設計。　
5. 保留修改訂單與變更價格之權益
福克斯試圖在其產品説明方面盡可能做到準確。然而，福克斯並不保證產品和價格説明或本網站的其他内容是準確地、完整的、可靠的、最新的或是毫無差錯的，因此我們針對所有的訂單，保留出貨或更改價格的權利。
6. 免責聲明及責任限制
本網站及所有所含資訊是由福克斯依"現狀"及"現有"基礎提供。至於本網站的運營和可用性或有關信息、内容、材料或該網站上顯示的商品，福克斯不作任何形式的明示或暗示的申明或擔保。您明確同意您為使用本網站自行承擔風險。在法律完全許可的範圍內，福克斯否認所有明示或暗示的保證，包括但不僅限於出於某種特定目的而對適銷性和適用性作出的保證。東明數位不保證本網站及其服務或發送的電子郵件不存在病毒或其他有害内容或錯誤。福克斯將不承擔任何因使用本網站產生的損害，包括但不限於直接的、間接的、偶然的、懲罰性的及相應的損害。對任何有關本網站、本條款和條件及私隱條款方面的問題，福克斯所承擔的責任將不超過NT$500.00。
7. 索賠問題
您同意對福克斯及其關連公司就任何因您違反使用條款或任何因您提供的資訊或採取的行爲而蒙受的損失、負債、成本、費用及開支，包括合理的律師訴訟費進行賠償。我們將及時通知您有關此類索賠、訴訟或法律程序。
8. 隱私權說明
請閲讀我們的隱私權保護方針，它將對您訪問本網站進行管理，並幫助您了解我們的處理方法。
9. 凖據法及專屬管轄權
本協議依照中華民國的法律構建，並受其管理。如發生任何爭議，您和福克斯同意遵從專屬管轄權和中華民國台北法院管轄地的法律。
10. 不可抗力
對於超出福克斯控制範圍的原因造成的推遲或無法履行義務，福克斯將不承擔責任。這些原因包括但不僅限於：天災、戰爭或恐怖主義、自然災害、依照法律法規及政策徵收的費用、貨物和服務上的短缺。在這些原因影響下福克斯可能推遲發貨且不承擔相應責任，但在這些原因導致未出貨部分被取消的情況下，福克斯將把相應貨款退還給顧客。
11. 一般條款
繼續使用本網站表示您承認已閲讀並理解該使用條款，表示您同意依照這些條款和條件行動並受其約束。在沒有福克斯事先書面同意的情況下不得對該使用條款有任何的調整或修改。福克斯沒有處理您或其他人的違反條款行爲並不意味著福克斯將放棄對其後果及類似違反行爲的處理權力。
如果您作爲一個團體的代理人（包括代表您的雇主），那您和您的團體將共同且分別承擔本協議中規定的義務。
如果法院發現本協議中有任何部分無效、違法或者不可執行，那該部分將被扣除，其餘部分將在法律允許的最大範圍内繼續保持其有效性和可強制執行性。
　
福克斯有限公司
                            </textarea>
                            <br />
                            <asp:CheckBox ID="ckb" runat="server" Text="我同意以上條款" />
                            <span style="color:red">
                                <asp:Literal ID="Literal8" runat="server" ></asp:Literal>
                                &nbsp;&nbsp;
                            </span>                         
                            <asp:Button ID="btn_register" runat="server" Text="註冊" OnClick="btn_register_Click" BackColor="Black" BorderColor="White" BorderStyle="None" ForeColor="White" />
                        </td>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                         <h1>會員資料</h1>
                        <table border="0" frame="hsides">
                            <tr>
                                <td align="left" class="auto-style1"><asp:Label ID="Label2" runat="server" Text="會員帳號"></asp:Label></td>
                                <td><asp:Literal ID="Literal1" runat="server"></asp:Literal></td>                        
                            </tr>
                            <tr>
                                <td align="left" class="auto-style1"><asp:Label ID="Label3" runat="server" Text="姓名"></asp:Label></td>
                                <td><asp:Literal ID="Literal2" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td align="left" class="auto-style1"><asp:Label ID="Label4" runat="server" Text="性別"></asp:Label></td>
                                <td><asp:Literal ID="Literal3" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="Label5" runat="server" Text="生日"></asp:Label></td>
                                <td><asp:Literal ID="Literal4" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="Label6" runat="server" Text="手機號碼"></asp:Label></td>
                                <td><asp:Literal ID="Literal5" runat="server"></asp:Literal></td>
                            </tr>           
                            <tr>
                                <td align="left"><asp:Label ID="Label9" runat="server" Text="電子郵件"></asp:Label></td>
                                <td><asp:Literal ID="Literal6" runat="server"></asp:Literal></td>
                            </tr>
                            <tr>
                                <td align="left"><asp:Label ID="Label10" runat="server" Text="住址"></asp:Label></td>
                                <td><asp:Literal ID="Literal7" runat="server"></asp:Literal></td>
                            </tr>
                        </table>      
                    </asp:View>
                </asp:MultiView>
            </div>
        </form>
    </body>
</html>