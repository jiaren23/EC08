<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Emplog.aspx.cs" Inherits="Emplog" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .total{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="total">
             <h1>登入 / 登出</h1>
            <asp:Label ID="lblUser" runat="server" Text="帳號  "></asp:Label>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPwd" runat="server" Text="密碼  "></asp:Label>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="登入" OnClick="Button1_Click" BackColor="Black" BorderColor="White" BorderStyle="None" CssClass="view" ForeColor="White" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="後台管理主選單" />           
        </div>       
    </form>
</body>
</html>
