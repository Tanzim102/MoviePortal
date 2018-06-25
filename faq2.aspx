<%@ Page Language="C#" AutoEventWireup="true" CodeFile="faq2.aspx.cs" Inherits="faq2" %>
 

<!DOCTYPE html>
<body background="Images/s.jpg">
     <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
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
    background-size: cover;}
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 675px;
            font-size: 30px;
            text-align: right;
        }
        .auto-style4 {
            width: 804px;
        }
        .auto-style5 {
            width: 335px;
            font-size: 18px;
            text-align: right;
        }
        .auto-style6 {
            width: 602px;
        }
        .auto-style7 {
            width: 531px;
        }
        .auto-style8 {
            width: 1048px;
        }
        .auto-style9 {
            width: 489px;
        }
        .auto-style10 {
            width: 659px;
            font-size: xx-large;
            text-align: center;
        }
      
        .auto-style16 {
            text-align: center;
             width: 127px;
        }
        
        .auto-style17 {
            font-size: large;
        }
        
        .auto-style19 {
            width: 416px;
        }
        
        .auto-style23 {
            font-size: large;
            text-align: left;
            color: #FEFFFF;
        }
        
        .auto-style24 {
            font-size: large;
            color: #FEFFFF;
        }
        .auto-style25 {
            margin-left: 14px;
            margin-top: 9px;
        }
        
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style10">Movie Portal</td>
            <td  class="auto-style9" >&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>


<div>

    <table class="auto-style1">
        <tr>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style23">
                <span class="auto-style24"><strong>Is it legal to watch movies on movie portal <span class="auto-style17">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style25" OnClick="Button4_Click" Text="?" Width="17px" />
                </span>
                </strong></span>
<p id="demo">
    <asp:Label ID="Label4" runat="server"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style23"> <span class="auto-style17"><strong>I can't find my favorite movies, what can I do <asp:Button ID="Button3" runat="server" CssClass="auto-style25" OnClick="Button3_Click" Text="?" Width="17px" />
                </strong></span>
<p id="demo1">
    <asp:Label ID="Label3" runat="server"></asp:Label>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style23"><span class="auto-style17"><strong>It says url is broken, what i need to do
                <asp:Button ID="Button2" runat="server" CssClass="auto-style25" OnClick="Button2_Click" Text="?" Width="17px" />
                </strong></span>
<p id="demo2">
    <asp:Label ID="Label2" runat="server"></asp:Label>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style23"><span class="auto-style17"><strong>How to contact us<asp:Button ID="Button1" runat="server" CssClass="auto-style25" OnClick="Button1_Click" Text="?" Width="17px" />
                </strong></span>
<p id="demo3">
    <asp:Label ID="Label1" runat="server"></asp:Label>
                </p></td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>

</div>
<div>

   

</div>
       
    </form>
</body>
</html>
