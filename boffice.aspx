<%@ Page Language="C#" AutoEventWireup="true" CodeFile="boffice.aspx.cs" Inherits="boffice" %>
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
            <h1>福克斯 後台管理</h1>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />        
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="員工管理" />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="推薦人管理" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>