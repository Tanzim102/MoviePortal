<%@ Page Language="C#" AutoEventWireup="true" CodeFile="seefree.aspx.cs" Inherits="seefree" %>

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
               margin-left: 568px;
               margin-top: 255px;
               font-size: 15px;
           }
           </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Click to Watch free movie :)" OnClick="Button1_Click" CssClass="auto-style1" Height="84px" Width="237px" Font-Size="Large" />
        </div>
    </form>
</body>
</html>
