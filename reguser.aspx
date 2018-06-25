<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reguser.aspx.cs" Inherits="de" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
html{
             background-image: url("Images/ji.jpg");

    height: 100%; 

    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
        }

* {
    box-sizing: border-box;
}

/* Add padding to containers */
.container {
    padding: 16px;
    background-color: none;
}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

/* Overwrite default styles of hr */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue text color to links */
a {
    color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
    background-color: #f1f1f1;
    text-align: center;
}
    .auto-style1 {
        width: 86px;
    }
    .auto-style2 {
        padding: 16px;
        background-color: none;
        margin-left: 0px;
    }
    .auto-style3 {
        text-align: center;
        color: #FFFFFF;
    }
    .auto-style4 {
        height: 35px;
        width: 96px;
        margin-top: 0px;
    }
    .auto-style5 {
        text-align: center;
        width: 751px;
    }
    .auto-style6 {
        text-align: center;
        width: 750px;
    }
    .auto-style7 {
        text-align: center;
        width: 749px;
    }
    .auto-style8 {
        text-align: center;
        width: 800px;
        margin-left: 0px;
    }
    .auto-style9 {
        width: 180px;
        margin-left: 10px;
        text-align: justify;
        color: #FFFFFF;
        font-size: large;
    }
    .auto-style10 {
        text-align: center;
        width: 200px;
    }
    .auto-style11 {
        text-align: justify;
        width: 200px;
        color: #FFFFFF;
        font-size: large;
    }
    .auto-style12 {
        text-align: center;
        width: 751px;
        color: #000000;
    }
    .auto-style13 {
        margin-left: 0px;
    }
    .auto-style14 {
        color: #FFFFFF;
    }
    </style>
</head>
<body style="height: 491px; margin-left: 190px; margin-right: 190px; margin-bottom: 0px">
       <form id="form1" runat="server">

  <div class="container">
    <h1 class="auto-style14">Register</h1>
    <p class="auto-style3">Please fill in this form to create an account.</p>
   
    <table class="auto-style2">
    <tr>
        <td class="auto-style11">Username:</td>
        <td class="auto-style8">
            <asp:TextBox ID="user" placeholder="Enter Name" runat="server" Height="38px" Width="500px" margin-left="0px" Font-Strikeout="False"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="User Name is Required" CssClass="auto-style5"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Email Address:</td>
        <td class="auto-style8">
            <asp:TextBox ID="email" placeholder="Enter Email" runat="server" Height="38px" Width="500px" Font-Strikeout="False"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is Required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter the Valid EmailId" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="auto-style12"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Password:</td>
        <td class="auto-style8">
            <asp:TextBox ID="pass" Placeholder="Enter Password" runat="server" Height="38px" Width="500px" TextMode="Password" onkeyup="checkPasswordStrength()" Font-Overline="False" Font-Strikeout="False"></asp:TextBox>
    
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
    

        if (passwordScore >= 100) 
        {
            strength = "Strong";
          
        }
        else if (passwordScore >= 80) 
        {
            strength = "Medium";
          
        }
        else if (passwordScore >= 60) 
        {
            strength = "Weak";
         
        }
        else 
        {
            strength = "Very Weak";
           
        }

        document.getElementById("Label2").innerHTML = strength;
        
        passwordTextBox.style.backgroundColor = backgroundColor;
    }
    </script>









        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pass" ErrorMessage="Password is required" CssClass="auto-style5"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Confirm Password:</td>
        <td class="auto-style8">
            <asp:TextBox ID="reppass" placeholder="Confirm Password" runat="server" Height="38px" Width="500px" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style1">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="reppass" ErrorMessage="Confirmation is Required" CssClass="auto-style6"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="reppass" ErrorMessage="Both Password must be Same" CssClass="auto-style7"></asp:CompareValidator>
        </td>
    </tr>
    
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style8">
            
           
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" style="margin-top: 0px" Width="94px" height="35px" CssClass="auto-style13" />
            <input id="Reset1" type="reset" value="reset" style="margin-left: 0px; " class="auto-style4"  /><td class="auto-style1"></td>
    </tr>
    <hr>
    
  <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>

        
</table>
          

      <div class="container signin">
    <p>Already have an account? <a href="loginuser.aspx">Sign in</a>.</p>
  </div>
    </div>
          
  </form>


</body>

</html>
