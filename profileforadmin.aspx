<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profileforadmin.aspx.cs" Inherits="profileuser" %>

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
            width: 100%;
        }
        .auto-style2 {
            width: 5px;
            height: 624px;
        }
        .auto-style3 {
            width: 18340%;
            margin-top: 0px;
            height: 363px;
        }
        .auto-style4 {
            width:  190px;
            height: 182px;
            margin-left: 547px;
        }
        .auto-style5 {
            width: 2858px;
        }
        .auto-style6 {
            width: 538px;
        }
        .auto-style8 {
            height: 26px;
        }
        .auto-style10 {
            width: 538px;
            height: 67px;
        }
        .auto-style11 {
            height: 67px;
        }
        .auto-style13 {
            height: 72px;
        }
        .auto-style14 {
            width: 538px;
            color: #FFFFFF;
            text-align: right;
            height: 46px;
            font-size: large;
        }
        .auto-style15 {
            height: 46px;
        }
        .auto-style17 {
            height: 37px;
        }
        .auto-style18 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
             <table class="auto-style1">
        <tr>
            <td class="auto-style2"><img src="images/picc.jpg" alt="photo 5" <br class="auto-style4" /><table class="auto-style3">
                    <tr>
                        <td class="auto-style14">User Name</td>
                        <td class="auto-style15">
                            <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="190px" ReadOnly="True">Tanzim</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Email Address</td>
                        <td class="auto-style17">
                            <asp:TextBox ID="TextBox2" runat="server" Width="190px" Height="26px" ReadOnly="True">shitutanzim0711@gmail.com</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Password</td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Height="26px" ReadOnly="True" Width="190px">shitu</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Gender</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="TextBox4" runat="server" Height="26px" ReadOnly="True" Width="190px">Female</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Age</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style18" Height="26px" ReadOnly="True" Width="190px">21</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Profession</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="TextBox6" runat="server" Height="26px" ReadOnly="True" Width="190px">Student</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style14">Anything Else</td>
                        <td class="auto-style13">
                            <asp:TextBox ID="TextBox7" runat="server" Height="26px" ReadOnly="True" Width="190px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10"></td>
                        <td class="auto-style11">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>
