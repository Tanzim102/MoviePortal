<%@ Page Language="C#" AutoEventWireup="true" CodeFile="users.aspx.cs" Inherits="users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Portal</title>
    <style type="text/css">
        body,html{
             background-image: url("Images/ji.jpg");

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
        }
        .auto-style1 {
            margin-left: 303px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style1" DataKeyNames="Usernaame" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Height="574px" Width="661px">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="Usernaame" HeaderText="Usernaame" ReadOnly="True" SortExpression="Usernaame" />
                    <asp:BoundField DataField="Emaail" HeaderText="Emaail" SortExpression="Emaail" />
                    <asp:BoundField DataField="Paassword" HeaderText="Paassword" SortExpression="Paassword" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [RegisterTable]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
