<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginuser.aspx.cs" Inherits="fgbgbgf" %>

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
        .auto-style11 {
            width: 562px;
            margin-left:600px;
            height: 586px;
            background-color: none;
            margin-bottom: 0px;
        }
        .auto-style12 {            width: 469px;
        }
        .auto-style13 {
            width: 265px;
            height: 50px;
        }
        .auto-style14 {
            color: white;
            font-size:large;
   
        }
        .auto-style15 {
            height: 52px;
            color: #FEFFFF;
            font-size: xx-large;
            margin-left: 39px;
        }
        .auto-style16 {
            margin-left: 7px;
        }
        .auto-style17 {
            margin-left: 7px;
        }
        .auto-style19 {
            color: #FFFFFF;
            height: 40px;
            font-size: x-large;
        }
        .auto-style20 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style21 {
            font-size: large;
        }
    </style>
</head>
<body style="width: 1px; height: 64px; margin-left: 276px; margin-right: 200px; background-color: white" >
    <form id="form1" runat="server">
       
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">
              <dl>
               <dd class="auto-style15">&nbsp; Login</dd>
 
                  
             </dl>
                <p>
                </p>
                <dl>
               <dd class="auto-style20">&nbsp;<span class="auto-style21">&nbsp;User Name</span></dd>
               <dd><br>
                   <asp:TextBox ID="username" runat="server" Width="397px" Height="28px" CssClass="auto-style16"></asp:TextBox>
                  </dd>
               <dd></dd>
                  <dd class="auto-style19">&nbsp;<span class="auto-style21">Password</span></dd>
               <dd>
                   <asp:TextBox ID="pasword" runat="server" Width="397px" Height="28px" CssClass="auto-style17" TextMode="Password"></asp:TextBox>
                  </dd>
               <dd class="auto-style13">

                
                   <strong>

                
                   <asp:Button ID="Button1" runat="server" Text="Login" Height="40px" Width="80px" Font-Size="Large" OnClick="Button1_Click1" CssClass="auto-style17" />
                   </strong>
               <asp:HyperLink ID="reg" runat="server" a href="reguser.aspx" ForeColor="#106BAA" NavigateUrl="http://localhost:24325/registerr.aspx">Register</asp:HyperLink>
               </dd>
                    <br />
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <asp:CheckBox ID ="rememberme" runat="server"  Text =" remember password" CssClass="auto-style14" />
                    
             <br />
                    <br />
                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="http://localhost:24325/"><span class="auto-style20"><strong>Go to HOME</strong></span></a></p>
                    
                  
             </dl>

                </tr>
        <asp:Label ID="Label1login" runat="server" ForeColor="Red" Font-Size="X-Large"></asp:Label>
</table>
         
                  
                   <br />
                  
                  
    </form>
</body>
</html>
