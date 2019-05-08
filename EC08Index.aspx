<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EC08Index.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
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
                
            }
            #title {
                text-align: center;
                 color: #3399FF;
            }
            #title2 {
                text-align: center;
                 color: #3399FF;
            }
        </style>
        <meta  name="viewport"  content="width=device-width, initial-scale=1 http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>福克斯 Focus</title>
        <link rel="icon" href="images/logo2.jpg" type="images/logo2.jpg"> 
        <link rel="shortcut icon" href="images/logo2.jpg" type="images/logo2.jpg">
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
                    <asp:LinkButton ID="LKB_PREPAY" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton9_Click1">  預付卡  </asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LKB_MEMBER" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#4169E1" OnClick="LinkButton4_Click1">  會員中心  </asp:LinkButton>                 
                    &nbsp;<asp:LinkButton ID="LKB_LOGIN" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="微軟正黑體 Light" Font-Overline="False" Font-Size="large" Font-Strikeout="False" ForeColor="#3399FF" OnClick="LinkButton8_Click1">  登入  </asp:LinkButton>      
                    &nbsp;                      
                </div>
            </div> 
            <style>
                * {
                    box-sizing: border-box
                }
                body {
                    font-family: Verdana, sans-serif;
                    margin: 0;
                }
                .mySlides {
                    display: none
                }
                img {
                    vertical-align: middle;
                }
              /* Slideshow container */
                .slideshow-container {
                    max-width: 1000px;
                    position: relative;
                    margin: 15px auto;
                    top: 68px;
                    left: 6px;
                }
              /* Next & previous buttons */
                .prev, .next {
                    cursor: pointer;
                    position: absolute;
                    top: 50%;
                    width: auto;
                    padding: 16px;
                    margin-top: -22px;
                    color: white;
                    font-weight: bold;
                    font-size: 18px;
                    transition: 0.6s ease;
                    border-radius: 0 3px 3px 0;
                }
              /* Position the "next button" to the right */
                .next {
                    right: 0;
                    border-radius: 3px 0 0 3px;
                }
              /* On hover, add a black background color with a little bit see-through */
                    .prev:hover, .next:hover {
                        background-color: rgba(0,0,0,0.8);
                    }
              /* Caption text */
                .text {
                    color: #f2f2f2;
                    font-size: 15px;
                    padding: 8px 12px;
                    position: absolute;
                    bottom: 8px;
                    width: 100%;
                    text-align: center;
                }
              /* The dots/bullets/indicators */
                .dot {
                    cursor: pointer;
                    height: 15px;
                    width: 15px;
                    margin: 0 2px;
                    background-color: #bbb;
                    border-radius: 50%;
                    display: inline-block;
                    transition: background-color 0.6s ease;
                }
                    .active, .dot:hover {
                        background-color: #717171;
                    }
              /* Fading animation */
                .fade {
                    -webkit-animation-name: fade;
                    -webkit-animation-duration: 1.5s;
                    animation-name: fade;
                    animation-duration: 1.5s;
                }
                @-webkit-keyframes fade {
                    from {
                        opacity: .4
                    }
                    to {
                        opacity: 1
                    }
                }
                @keyframes fade {
                    from {
                        opacity: .4
                    }
                    to {
                        opacity: 1
                    }
                }
              /* On smaller screens, decrease text size */
                @media only screen and (max-width: 300px) {
                    .prev, .next, .text {
                        font-size: 11px
                    }
                }
                .story {
                    width: 80%;
                    margin-left: 10%;
                    margin-right: 10%;
                    color: #9955FF;
                }
                table {
                    background-color: transparent;
                }

                table {
                    border-spacing: 0;
                    border-collapse: collapse;
                }
                td, th {
                    padding: 0;
                }
                td, th {
                    display: table-cell;
                    vertical-align: inherit;
                }
                .story p {
                    text-align: center;
                }
                p {
                    margin: 0 0 10px;
                }
                .story h1 {
                    text-align: center;
                }
                ribbon {
                    margin-left: 80%;
                    margin-right: 10%;
                    padding: 10%;
                }                
                /*footer*/
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
            <br/>
            <br/>
            <div class="slideshow-container">
                <div class="mySlides fade">                 
                    <img src="images/img111.jpg" style="width:100%"/>  
                    <div class="text">Caption Text</div>
                </div>                               
                <div class="mySlides fade">      
                    <img src="images/img222.jpg" style="width:100%"/>
                    <div class="text">
                        Caption Two
                    </div>
                </div>                           
                <div class="mySlides fade">               
                   <img src="images/img333.jpg" style="width:100%"/>                   
                   <div class="text">Caption Three</div>
                </div>
                <div class="mySlides fade">        
                   <img src="images/img444.jpg" style="width:100%"/>
                   <div class="text">
                       Caption Three
                   </div>
                </div>      
                <div class="mySlides fade">                
                    <img src="images/img555.jpg" style="width:100%"/>   
                    <div class="text">
                        Caption Three
                    </div>
                </div> 
                <a class="prev" onclick="plusSlides(-1)"><&#10094;</a>
                <a class="next" onclick="plusSlides(1)"><&#10095;</a>
            </div>
            <br/> 
            <br/>
            <br/> 
            <%--跑馬燈script--%>   
            <script>
                var slideIndex = 1;
                showSlides(slideIndex);
                function plusSlides(n) {
                    showSlides(slideIndex += n);
                }
                function currentSlide(n) {
                    showSlides(slideIndex = n);
                }
                function showSlides(n) {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    var dots = document.getElementsByClassName("dot");
                    if (n > slides.length) { slideIndex = 1 }
                    if (n < 1) { slideIndex = slides.length }
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    for (i = 0; i < dots.length; i++) {
                        dots[i].className = dots[i].className.replace(" active", "");
                    }
                    slides[slideIndex - 1].style.display = "block";
                    dots[slideIndex - 1].className += " active";
                }
               var slideIndex = 0;
                showSlides();
                function showSlides() {
                    var i;
                    var slides = document.getElementsByClassName("mySlides");
                    for (i = 0; i < slides.length; i++) {
                        slides[i].style.display = "none";
                    }
                    slideIndex++;
                    if (slideIndex > slides.length) { slideIndex = 1 }
                    slides[slideIndex - 1].style.display = "block";
                    setTimeout(showSlides, 3000); // Change image every 3 seconds
                }
            </script>
            <br/><br/><br/>  <h1 id="title"><span style="font-family:Microsoft JhengHei;">福克斯攝影專賣店</span></h1>
                <h2 id="title2"><span style="font-family:Microsoft JhengHei;">讓你FOCUS所有深刻的美好</span></h2>  <br/><br/><br/>
            
  <%--          <div>
                <table class="story" align="center">
                    <tr>
                        <td> <img src="images/story_img.jpg" style="width:400px"/> </td>
                        <td>
                            <h2>Story</h2>
                            <h3>
                                <span style="font-family:Microsoft JhengHei;">
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
            </div>--%>
            <div>        
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="images/allproduct.png"  OnClick="LKB_PRODUCT_Click" Width="100%" Height="208px"  />
            </div>
            <br/>
            <br/>
            <br/>
            <div class="ribbon">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="images/ribbon_img_menu.png"  OnClick="LKB_PRODUCT_Click" Width="30%"   />
            </div>
            <br/>
            <br/>
            <br/>
            <div>
                <table class="story">
                    <tr>
                        <td>
                            <img src="Images/img33.jpg" alt="提示文字" width="100%" />
                        </td>
                        <td>
                            <h1><span style="font-family:Microsoft JhengHei;">故事</span></h1>
                            <p><span style="font-family:Microsoft JhengHei;">
                                歲月匆匆，路途漫漫，
                                <br/>
                                把一輩子一起走過的路收藏在鏡頭裡。
                                <br/>
                                偶而想起的時候，
                                <br/>
                                和少時一樣的微笑仍然徐徐綻放。
                                <br/>          
                                <br/>               
                                <a href="EC08Story.aspx">更多故事內容</a>
                               </span>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h1><span style="font-family:Microsoft JhengHei;">關注我們</span></h1>
                            <p><span style="font-family:Microsoft JhengHei;">
                                最新商品將陸續上架</span>
                            </p>
                        </td>
                        <td>                   
                            <img src="Images/storybook.jpg" alt="提示文字" width="100%" />
                        </td>
                    </tr>             
                </table>
            </div>
            <br/>
            <br/>
            <br/>
            <footer class="footer" align="center">
                <div class="row">
                    <div class="basic_info">
                        <br />
                        <img src="images/logo2.jpg" width="80" />&nbsp;&nbsp;© EC08   屏東縣屏東市民生東路51號 (08)- 723 8700&nbsp; 
                        <a href="http://www.nptu.edu.tw/bin/home.php">http://www.nptu.edu.tw/bin/home.php</a>
                        <br />
                        <br />
                    </div> 
                </div>
            </footer>
            <br/>
        </form>
    </body>
</html>