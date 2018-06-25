<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userrequest.aspx.cs" Inherits="userreg" %>

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
            color: #FFFFFF;
            font-size: x-large;
            width: 638px;
            background-color: none;
            margin-left: 184px;
            background-image: none;
        }


        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 533px;
        }
        .auto-style3 {
            width: 533px;
            height: 109px;
        }
        .auto-style4 {
            height: 109px;
        }
        .auto-style5 {
            width: 533px;
            height: 50px;
        }
        .auto-style6 {
            height: 50px;
        }
        .auto-style7 {
            width: 533px;
            height: 56px;
        }
        .auto-style8 {
            height: 56px;
        }
        .auto-style9 {
            width: 533px;
            height: 43px;
        }
        .auto-style10 {
            height: 43px;
        }
        .auto-style11 {
            width: 533px;
            height: 42px;
        }
        .auto-style12 {
            height: 42px;
        }
        .auto-style13 {
            text-align: left;
        }
        .auto-style14 {
            text-decoration: none;
        }
        .auto-style15 {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3"><a href="AfterLogin.aspx" class="auto-style14"><span class="auto-style15"><strong>Home</strong></span></a></td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style2">Please first our movie categories...&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        UserName</td>
                </tr>
                 <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        
                        <asp:TextBox ID="TextBox1" runat="server"  Width="337px" Height="28px"></asp:TextBox>
                        
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        
                        MovieName</td>
                </tr>
                 <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        
                        <asp:TextBox ID="TextBox2" runat="server" Width="337px" Height="28px"></asp:TextBox>
                        
                    </td>
                </tr>
                 <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style10">
                         
                        Director</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="337px" Height="28px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="Button1" runat="server" Text="Request" Height="36px" OnClick="Button1_Click" Width="103px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <br />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
