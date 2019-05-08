<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Employee.aspx.cs" Inherits="Employee" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .total {
            margin-top: 10%;
            text-align: -webkit-center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="total">
            <h1>員工管理</h1>
            <p>
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Eacc" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="Eacc" HeaderText="Eacc" ReadOnly="True" SortExpression="Eacc" />
                    <asp:BoundField DataField="Epwd" HeaderText="Epwd" SortExpression="Epwd" />
                    <asp:BoundField DataField="Eemail" HeaderText="Eemail" SortExpression="Eemail" />
                    <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                    <asp:BoundField DataField="Esex" HeaderText="Esex" SortExpression="Esex" />
                    <asp:BoundField DataField="Etel" HeaderText="Etel" SortExpression="Etel" />
                    <asp:BoundField DataField="Eadd" HeaderText="Eadd" SortExpression="Eadd" />
                    <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ECConnectionString3 %>" SelectCommand="SELECT * FROM [EC08Employee]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="後台管理主選單" />
        </div>
    </form>
</body>
</html>
