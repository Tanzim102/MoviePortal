<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blaaa.aspx.cs" Inherits="blaaa" %>

<!DOCTYPE html>
<html>
  
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
 




/* Modal Content/Box */
.modal-content {
    background-color: white;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

 


/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
 <form id="form1" runat="server">
<h2>Modal Login Form</h2>

    

      <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Register as User</button>
    
 <div id="id01" class="valo">
  
  <form class="valo-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

   
       
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">
              <dl>
               <dd class="loginhead">Login</dd>
 
                  
             </dl>
                <p>
                </p>
                <dl>
               <dd>User Name</dd>
               <dd><br>
                   <asp:TextBox ID="TextBox3" runat="server" Width="397px" Height="38px"></asp:TextBox>
                  </dd>
               <dd></dd>
                  <dd>Password</dd>
               <dd>
                   <asp:TextBox ID="TextBox4" runat="server" Width="398px" Height="38px"></asp:TextBox>
                  </dd>
               <dd class="auto-style13">

                
                   <asp:Button ID="Button1" runat="server" Text="Login" Height="40px" Width="80px" OnClick="Button1_Click1" />
               <asp:HyperLink ID="HyperLink2" runat="server" a href="registerr.aspx" ForeColor="#106BAA" NavigateUrl="http://localhost:24325/registerr.aspx">Register</asp:HyperLink>
               </dd>
 
                  
             </dl>

                </tr>
        <asp:Label ID="Label2" runat="server" ForeColor="Red" Font-Size="X-Large"></asp:Label>
</table>
            
    </form>
    </div>
 


<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
     <button onclick="document.getElementById('id02').style.display='block'" style="width:auto;">Register by clicking here as Admin</button>
    
    <div id="id02" class="modal">
  
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>

   
       
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">
              <dl>
               <dd class="loginhead">Login</dd>
 
                  
             </dl>
                <p>
                </p>
                <dl>
               <dd>Admin Name</dd>
               <dd><br>
                   <asp:TextBox ID="TextBox1" runat="server" Width="397px" Height="38px"></asp:TextBox>
                  </dd>
               <dd></dd>
                  <dd>Admin Password</dd>
               <dd>
                   <asp:TextBox ID="TextBox2" runat="server" Width="398px" Height="38px"></asp:TextBox>
                  </dd>
               <dd class="auto-style13">

                
                   <asp:Button ID="Button2" runat="server" Text="Login" Height="40px" Width="80px" OnClick="Button1_Click1" />
               <asp:HyperLink ID="HyperLink1" runat="server" a href="registerr.aspx" ForeColor="#106BAA" NavigateUrl="http://localhost:24325/registerr.aspx">Register</asp:HyperLink>
               </dd>
 
                  
             </dl>

                </tr>
        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Size="X-Large"></asp:Label>
</table>
            
    </form>
    </div>
 


<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
     </form>
    
</body>
</html>
