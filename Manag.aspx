<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manag.aspx.cs" Inherits="Manag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceRegistrationn" EnableModelValidation="True" ForeColor="#333333" GridLines="None" DataKeyNames="Emaail">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Usernaame" HeaderText="Usernaame" SortExpression="Usernaame" />
                    <asp:BoundField DataField="Emaail" HeaderText="Emaail" SortExpression="Emaail" ReadOnly="True" />
                    <asp:BoundField DataField="Paassword" HeaderText="Paassword" SortExpression="Paassword" />
                    <asp:BoundField DataField="Countrry" HeaderText="Countrry" SortExpression="Countrry" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceRegistrationn" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [RegisterTable]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
