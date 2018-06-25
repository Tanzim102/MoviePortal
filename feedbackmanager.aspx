<%@ Page Language="C#" AutoEventWireup="true" CodeFile="feedbackmanager.aspx.cs" Inherits="feedbackmanager" %>

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
            margin-left: 315px;
            margin-top: 0px;
            margin-right: 315px;
        }
        
        .auto-style11 {
            margin-left: 390px;
            margin-top: 0px;
            margin-right: 315px;
        }

        .auto-style2 {
            color: #FFFFFF;
            font-size: xx-large;
            height: 500px;
        }
        .auto-style3 {
            text-decoration: none;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
        .auto-style5 {
            color: #000000;
            font-size: large;
        }
        .auto-style6 {
         
            margin-left:300px;
            width: 850px;
        }
        .auto-style12 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style13 {
            font-size: large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style2"><a href="AfterLogin.aspx" class="auto-style3"><span class="auto-style4">Home</span></a></span><asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"   CellPadding="4" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Height="613px" Width="689px" CssClass="auto-style1" DataKeyNames="id">
                <Columns>
                   <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name" />
                    <asp:BoundField DataField="feedback" HeaderText="FEEDBACK" SortExpression="feedback" />
                   
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [guestfeedback] WHERE [id] = @id" InsertCommand="INSERT INTO [guestfeedback] ([name], [feedback]) VALUES (@name, @feedback)" SelectCommand="SELECT * FROM [guestfeedback]" UpdateCommand="UPDATE [guestfeedback] SET [name] = @name, [feedback] = @feedback WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="feedback" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="feedback" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    
    
       <table class="auto-style11">
       
        <tr>
              
            <td class="auto-style6">
                
              <dl>
               <dd class="auto-style5">&nbsp;</dd>
 
                  
             </dl>
                <p>
                    &nbsp;</p>
                <dl>
                  <dd class="auto-style12">Give a feedback, thank you...</dd>
 
                  
             </dl>
                <p>
                </p>
                <dl>
               <dd class="auto-style20">&nbsp;<span class="auto-style4">&nbsp;Name</span></dd>
               <dd><br>
                   <asp:TextBox ID="roll" runat="server" Width="397px" Height="28px" CssClass="auto-style16"></asp:TextBox>
                  </dd>
               <dd></dd>
                  <dd class="auto-style4"></dd>
                    <dd></dd>
                    <dd class="auto-style4">&nbsp;Feedback</dd>
               <dd>
                   <asp:TextBox ID="password" runat="server" Width="397px" Height="28px" CssClass="auto-style17" TextMode="MultiLine"></asp:TextBox>
                  </dd>
               <dd class="auto-style13">

                   <strong>

                   <asp:Button ID="Button2" runat="server" Text="submit" Height="40px" Width="80px" Font-Size="Large" OnClick="Button1_Click1" CssClass="auto-style17" />
                   </strong>
                       
        <asp:Label ID="Label1" runat="server" Text=" " ></asp:Label>
                                 <br />
                       
       
               </dd>
            
               </dd>
       
             </dl>
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style4"></asp:Label>
               </tr>

</table>
    
    </form>
</body>
</html>
