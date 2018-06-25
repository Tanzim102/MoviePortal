<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pnnlz.aspx.cs" Inherits="plz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gfeed" runat="server" AutoGenerateColumns="false" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" EnableModelValidation="True" ShowFooter="true" DataKeyNams="id" 
                ShowHeaderWhenEmpty="true" OnRowCommand="gfeed_RowCommand" OnRowDeleting="gfeed_RowDeleting">
             
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="ID">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("id") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtid" Text ='<%# Eval("id") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                         <asp:TextBox ID="txtidFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="NAME">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("name") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtname" Text ='<%# Eval("name") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                         <asp:TextBox ID="txtnameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="FEEDBACK">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("feedback") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtfeed" Text ='<%# Eval("feedback") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                         <asp:TextBox ID="txtfeedFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/delete.png" runat="server" CommandName="Dalete" ToolTip="Delete" Width="20px" Height="20px" />

                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:ImageButton ImageUrl="~/Images/cacel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />

                    </EditItemTemplate>
                     <FooterTemplate>
                         <asp:ImageButton ImageUrl="~/Images/addnew.jpg" runat="server" CommandName="AddNew" ToolTip="AddNew" Width="20px" Height="20px" />

                     </FooterTemplate>
                </asp:TemplateField>


            </Columns>
            
            </asp:GridView>
            <br />
            <asp:Label ID="lblsuc" Text="" runat="server" ForeColor="green"></asp:Label>
       <asp:Label ID="lblerr" Text="" runat="server" ForeColor="red"></asp:Label>
        
            </div>
    </form>
 </body>
</html>
