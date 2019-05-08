<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recommend.aspx.cs" Inherits="Recommend" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .total {
            text-align: center;
        }
 table { 
  border: 0; 
  font-family: arial; 
  font-size:14px; 
  text-align: center;
} 
th { 
  background-color:#92c0ef; 
} 
td { 
  border-bottom:1 solid #000000; 
} 
.fail { 
  color:#FF0000; 
}
        .auto-style1 {
            height: 18px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <div class="total">
            <h1>推薦人管理</h1>
             <p>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                   </p>
<p>
<asp:Label ID="Label2" runat="server" Text="Label">
<table> 
  <tr> 
    <th class="auto-style1">帳號</th> 
    <th class="auto-style1">員工姓名</th> 
    <th class="auto-style1">推薦人序號</th> 
  </tr> 
  <tr> 
    <td>EC08104029</td> 
    <td>陳琬媛</td> 
     <td>RjEyOTQy</td>
  </tr>
<tr> 
    <td>EC08104036</td> 
    <td>許云馨</td> 
     <td>RjEyOTQy</td>
  </tr> 
  <tr> 
    <td class="auto-style2">EC08104042</td> 
    <td class="auto-style2">龔靖媛</td> 
     <td class="auto-style2">RjEyOTQy</td>
  </tr> 
  <tr> 
    <td>EC08104048</td> 
    <td>鄒蕙存</td> 
     <td>RjEyOTQy</td>
  </tr> 
                <tr> 
    <td>EC08104057</td> 
    <td>簡延銜</td> 
     <td>RjEyOTQy</td>
  </tr> 
                <tr> 
    <td>EC08104059</td> 
    <td>陳嘉仁</td> 
     <td>RjEyOTQy</td>
  </tr> 
 
</table>
                </asp:Label>
                   </p>

            <br />
            <br />
           <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="後台管理主選單" />
        </div>
    </form>
</body>
</html>
