<%@ Page Language="C#" AutoEventWireup="true" CodeFile="watchlist.aspx.cs" Inherits="watchlist" %>
 
<!DOCTYPE html>

<<html xmlns="http://www.w3.org/1999/xhtml">
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
      
        .auto-style2 {
            margin-left: 131px;
        }
        .auto-style4 {
            width: 56200%;
            height: 303px;
            margin-left: 178px;
        }
        .auto-style5 {
            height: 23px;
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style6 {
            height: 40px;
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style7 {
            color: #FFFFFF;
            font-size: x-large;
        }
      
        .auto-style8 {
            width: 586px;
            height: 26px;
            font-size: large;
            color: #FFFFFF;
            text-align: center;
        }
      
        .auto-style9 {
            height: 26px;
        }
      
        </style>
    </head>
  <body style="width: 1px; height: 64px; margin-left: 276px; margin-right: 200px; background-color: white" >
    <form id="form1" runat="server">
    
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style2" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Height="399px" Width="491px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="MovieName" HeaderText="MOVIENAME" SortExpression="MovieName" />
                <asp:BoundField DataField="Director" HeaderText="DIRECTOR" SortExpression="Director" />
                <asp:BoundField DataField="Rating" HeaderText="RATING" SortExpression="Rating" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [WatchTable] WHERE [Id] = @Id" InsertCommand="INSERT INTO [WatchTable] ([MovieName], [Director], [Rating]) VALUES (@MovieName, @Director, @Rating)" SelectCommand="SELECT * FROM [WatchTable]" UpdateCommand="UPDATE [WatchTable] SET [MovieName] = @MovieName, [Director] = @Director, [Rating] = @Rating WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Rating" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="Director" Type="String" />
                <asp:Parameter Name="Rating" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>









 
                  
                  
        <br />
        <br />
        <p class="auto-style8">
            Add a new movie...
        </p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style6">Movie Name</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="mov" runat="server" Height="29px" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Director</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="dir" runat="server" Height="29px" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Rating</td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="rat" runat="server" Height="29px" Width="360px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click2" Text="Add to Watchlist" Width="127px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Text=" " ForeColor="White" Font-Size="Larger"></asp:Label>
                </td>
            </tr>
        </table>









 
                  
                  
    </form>
</body>
</html>
      