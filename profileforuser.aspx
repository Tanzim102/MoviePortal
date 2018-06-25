<%@ Page Language="C#" AutoEventWireup="true" CodeFile="profileforuser.aspx.cs" Inherits="profileadmin" %>

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
        }
        .auto-style2 {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2"><span class="auto-style1">Your profile:</span>
            <br /><br />
            <br />
            <img src="Images/al.jpg" />
            <br />
            <br />
            <br />

            <asp:Label ID="Label1" runat="server" ForeColor="White" Font-Size="Large" Text=""></asp:Label>
           
        </div>
    </form>
</body>
</html>
