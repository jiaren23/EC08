<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08Story.aspx.cs" Inherits="images_EC08Story" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>福克斯 Focus - 福克斯故事</title>
        <style type="text/css">
            h1{
                text-align:center;
                margin-top:20%;
                color:lightcoral;               
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
               background-image: url(images/bg7.jpg);
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
            story{
                color:#3399FF;
            }
          
</style>  
        <link rel="icon" href="images/logo2.jpg" type="images/logo2.jpg"/> 
        <link rel="shortcut icon" href="images/logo2.jpg" type="images/logo2.jpg"/>
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
                    <asp:LinkButton ID="LKB_HOME" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton1_Click">  首頁  </asp:LinkButton>   
                    &nbsp;<asp:LinkButton ID="LKB_PRODUCT" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LKB_PRODUCT_Click">  商品資訊  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_CART" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton3_Click">  購物車  </asp:LinkButton>                 
                    &nbsp;<asp:LinkButton ID="LKB_MEMBER" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LinkButton4_Click1">  會員中心  </asp:LinkButton>                 
                    &nbsp;<asp:LinkButton ID="LKB_LOGIN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton8_Click1">  登入  </asp:LinkButton>                      
                </div>
            </div>      
            <h1>故事小館</h1>
             <div>
                <table class="story" align="center" >
                    <tr>
                        <td> <img src="images/story_img.jpg" style="width:400px"/> </td>
                        <td>
                            <h2>Story</h2>
                            <h3>
                                <span style="font-family:Microsoft JhengHei">
                                歲月匆匆，路途漫漫，把一輩子一起走過的路收藏在鏡頭裡。<br/>
                                偶而想起的時候，和少時一樣的微笑仍然徐徐綻放。<br/>
                                很多我們想刻印在腦海裡的記憶，隨著時間的推進漸漸被抹逝，<br/>
                                唯有聚焦在鏡頭下的那些事，可以依循著老照片慢慢回憶、細細品味。<br/>
                                翻看著相片，眼裡充滿訴說不盡的感動。多年後，照片中的你、我，依舊。<br/>
                                她的臉龐刻了歲月的痕跡，他的眉眼也染了風霜，<br/>
                                他們就要被時間剝奪走剩下的風華，但他們仍緊緊牽著彼此，<br/>
                                記錄下每個重要的時光，陪伴彼此走到盡頭。<br/>
                                </span>
                            </h3>
                        </td>
                    </tr>
                </table>
            </div>
    </form>
</body>
</html>
