<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminreq.aspx.cs" Inherits="adminreq" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
             margin-left: 314px;
         }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" CssClass="auto-style1" Width="612px">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                    <asp:BoundField DataField="movie" HeaderText="MOVIE" SortExpression="movie" />
                    <asp:BoundField DataField="Director" HeaderText="DIRECTOR" SortExpression="Director" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [ReqTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ReqTable] ([name], [movie], [Director]) VALUES (@name, @movie, @Director)" SelectCommand="SELECT * FROM [ReqTable]" UpdateCommand="UPDATE [ReqTable] SET [name] = @name, [movie] = @movie, [Director] = @Director WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="movie" Type="String" />
                    <asp:Parameter Name="Director" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="movie" Type="String" />
                    <asp:Parameter Name="Director" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
