<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerr.aspx.cs" Inherits="registerr" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link rel="stylesheet" type="text/css" href="StyleSheet2.css">
    <style type="text/css">
        .auto-style3 {
            color: #FFFFFF;
            font-size: xx-large;
            font-style: italic;
        }
        .auto-style4 {
            color: #006600;
        }
        .regtable {
            margin-left: 214px;
        }
        .auto-style5 {
            color: #336600;
        }
        .auto-style6 {
            color: #336600;
        }
        .auto-style7 {
            color: #336600;
        }
        .container {
    padding: 16px;
}
.modalbackground {
    display: none; /*hiding body*/
    position: fixed; 
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    background-color: black;
    padding-top: 20px;
}
.modal-content {
    background-color: black;
    margin: 15% auto 15% auto; 
    
    width: 70%;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: white;
}
.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}
        .auto-style9 {
            color: #FFFFFF;
            font-size: xx-large;
            font-style: italic;
            height: 26px;
        }
        .auto-style10 {
            color: #006600;
            height: 26px;
        }
        .auto-style11 {
            color: #006600;
            height: 26px;
            font-weight: bold;
        }
        .auto-style12 {
            color: #006600;
            font-weight: bold;
        }
        .auto-style13 {
            text-align: left;
            background-color: #003300;
            width: 218px;
            margin-left: 258px;
        }
        .auto-style14 {
            font-size: xx-large;
            background-color: #003300;
        }
        .auto-style15 {
            font-size: xx-large;
        }
        .auto-style16 {
            text-decoration: none;
        }
        .auto-style17 {
            color: #FFFFFF;
        }
        .auto-style18 {
            background-color: #000000;
            font-size: medium;
        }
        .auto-style19 {
            color: #FFFFFF;
            font-size: xx-large;
            font-style: italic;
            text-align: left;
        }
    </style>
</head>
<body>
   

  <form id="Form2"  runat="server" >
       <p></p>
    <div></div>
    <div></div>
    <div></div>
    <div>
        <p><a href="http://localhost:24325/" class="auto-style16"><strong><span class="auto-style17">GoBack</span></strong></a></p>
       
    </div>
    <div>
        <p class="auto-style13">
            <span class="auto-style14">Create</span> an <span class="auto-style15">Account</span>
        </p>
    </div>
      <div>
    <table class="container">
    <tr>
        <td class="auto-style12">Username</td>
        <td class="auto-style19">
            <asp:TextBox ID="user" placeholder="Enter Name" runat="server" Height="38px" Width="489px" BackColor="White" ForeColor="Black"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="User Name is Required" CssClass="auto-style5"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Email</td>
        <td class="auto-style3">
            <asp:TextBox ID="email" placeholder="Enter Email" runat="server" Height="38px" Width="489px" Font-Strikeout="False"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter the Valid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style5"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Password</td>
        <td class="auto-style3">
            <asp:TextBox ID="pass" Placeholder="Enter Password" runat="server" Height="38px" Width="489px" TextMode="Password" onkeyup="checkPasswordStrength()" Font-Overline="False" Font-Strikeout="False"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" CssClass="auto-style18"></asp:Label>
    
<script type="text/javascript"> 
    function checkPasswordStrength() 
    {
        var passwordTextBox = document.getElementById("pass");
        var password = passwordTextBox.value;
        var specialCharacters = "!£$%^&*_@#~?";
        var passwordScore = 0;

        passwordTextBox.style.color = "white";

        // Contains special characters
        for (var i = 0; i < password.length; i++) 
        {
            if (specialCharacters.indexOf(password.charAt(i)) > -1) 
            {
                passwordScore += 20;
                break;
            }
        }
         
        

        // Contains lower case letter
        if (/[a-z]/.test(password)) { passwordScore += 20; }

        // Contains upper case letter
        if (/[A-Z]/.test(password)) { passwordScore += 20; }

        // Contains numbers
        if (/[\d] /.test(password)) { passwordScore += 20; }

        if (password.length >= 8) { passwordScore += 20; }

        var strength = "";
        var backgroundColor = "red";

        if (passwordScore >= 100) 
        {
            strength = "Strong";
            backgroundColor = "green";
        }
        else if (passwordScore >= 80) 
        {
            strength = "Medium";
            backgroundColor = "gray";
        }
        else if (passwordScore >= 60) 
        {
            strength = "Weak";
            backgroundColor = "maroon";
        }
        else 
        {
            strength = "Very Weak";
            backgroundColor = "red";
        }

        document.getElementById("Label2").innerHTML = strength;
        
        passwordTextBox.style.backgroundColor = backgroundColor;
    }
    </script>









        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="Password is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Confirm Password</td>
        <td class="auto-style3">
            <asp:TextBox ID="reppass" placeholder="Confirm Password" runat="server" Height="38px" Width="489px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="reppass" ErrorMessage="Confirmation is Required" CssClass="auto-style6"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="reppass" ErrorMessage="Both Password must be Same" CssClass="auto-style7"></asp:CompareValidator>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style5">
            
           
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" style="margin-left: 0px; margin-top: 0px" />
            <input id="Reset1" type="reset" value="reset" style="margin-left: 0px; height: 29px;"  /><td class="auto-style7"></td>
    </tr>
  
</table>
          <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
    </div>
  </form>


</body>

</html>
