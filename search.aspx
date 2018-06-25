<%@ Page Language="C#" AutoEventWireup="true" CodeFile="search.aspx.cs" Inherits="search" %>

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
            height: 39px;
            width: 232px;
            margin-left: 488px;
        }
        .auto-style2 {
            font-size: x-large;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <td>    <font color="white"><span class="auto-style2">Search Movies here:</td></span>
                
               <td ><input type="text" placeholder="&#128269" text-aline="center" id="t1" onkeyup="display();" class="auto-style1" /></td>
             <div style="margin-left: 300px" id="d1"></div>


    <script type="text/javascript">
        function display() {

            var xmlhttp = new XMLHttpRequest();
            xmlhttp.open("GET", "search_n.aspx?&nm=" + document.getElementById("t1").value, false);
            xmlhttp.send(null);
            document.getElementById("d1").innerHTML = xmlhttp.responseText;
        }
 </script>
       
        </div>
    </form>
</body>
</html>
