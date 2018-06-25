<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>
 
<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet2.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
     

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 460px;
            font-size: 30px;
            text-align: right;
        }
        .auto-style4 {
            width: 804px;
        }
        
     

        .auto-style6 {
            width: 500px;
        }
        .auto-style7 {
            width: 531px;
        }
        .auto-style8 {
            width: 1048px;
        }
        .auto-style9 {
            width: 191px;
        }
        .auto-style10 {
            width: 127px;
            font-size: 18px;
            text-align: center;
        }
            
        .auto-style11 {
            width: 710px;
        }
        .title{
            font-size:19px;
        }
        .auto-style14 {
            font-size: 19px;
            text-align: left;
        }
        .auto-style35:hover{
            background-color:green;
        }
        .auto-style16 {
            text-decoration: none;
             
        }
        .auto-style17 {
            color: #FFFFFF;
            
        }
        
ul{
    margin: 0px;
    padding:0px;
    list-style:none;
}
 ul li{
    float:none;
    width:110px;
    height:40px;
   
    opacity:.8;
    line-height:40px;
    text-align:center;
    font-size:20px;
}
 ul li a {
    text-decoration:none;
    color:white;
   
}
ul li a:hover{
    background-color:black;
}
ul li ul
{
     background-color: gray;
     opacity: .8;
}
ul li ul li{
    display:none;
}
ul li:hover ul li{
    display:grid;
}

        .auto-style18 {
            margin-top: 1px;
        }

    </style>
</head>
<body>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">Movie Portal</td>
            <td class="auto-style10"><a href="http://localhost:24325/" class="auto-style16"><span class="auto-style17">Home</span></a></td>
            <td  class="auto-style9" >&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>
               <ul>
                   <li><a href="#"> <asp:Label ID="Labelwelcome" runat="server" Text="Welcome" Height="25px" Font-Size="18px" CssClass="auto-style18" ></asp:Label></a>
                       <ul>
                           <li><a href="#">Profile</a></li>
                            <li><a href="#">Watch List</a></li>
                            <li><a href="http://localhost:24325/">Logout</a></li>
                       </ul>
                   </li>
               </ul>
            
            


            </td>
            <td><input type="text" placeholder="&#128269">
    </td>
        </tr>
    </table>
      <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Timer ID="Timer1" runat="server" Interval="4000" OnTick="Timer1_Tick"></asp:Timer>
            <asp:Image ID="Image1" Height="450px" Width="1340px" runat="server" />
            </ContentTemplate>
    </asp:UpdatePanel>



<div>




</div>
  
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style14">Movies</td>
                    <td>&nbsp;</td>
                    <td class="auto-style14">Free Movies</td>
                    <td class="auto-style14">Help</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">Action</td>
                    <td class="auto-style15">History</td>
                    <td class="auto-style15">aaaaaaaaa</td>
                    <td>Request</td>
                </tr>
                <tr>
                    <td class="auto-style11"><strong>Movie Portal</strong>, here you can watch movies online in higher quality for free without annoying of </td>
                    <td class="auto-style15">Amination</td>
                    <td class="auto-style15">Horror</td>
                    <td class="auto-style15">aaaaaaaaaaaa</td>
                    <td><a href="faq.aspx" class="auto-style16"><span class="auto-style17">FAQ</span></a></td>
                </tr>
                <tr>
                    <td class="auto-style11">advertising, so just come and enjoy watching...</td>
                    <td class="auto-style15">Comedy</td>
                    <td class="auto-style15">Thriller</td>
                    <td class="auto-style15">aaaaaaaa</td>
                    <td>Contact Us</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">Crime</td>
                    <td class="auto-style15">Romantic</td>
                    <td class="auto-style15">aaaaaaaa</td>
                    <td>About</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">Drama</td>
                    <td class="auto-style15">TV series</td>
                    <td class="auto-style15">aaaaaaaaaa</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">Family</td>
                    <td></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

          
    
    </form>
    
</body>
</html>
