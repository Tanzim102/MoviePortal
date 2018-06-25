﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AfterLogin.aspx.cs" Inherits="AfterLogin" %>
 

<!DOCTYPE html>
<link rel="stylesheet" type="text/css" href="StyleSheet2.css">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Movie Portal</title>


    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 92px;
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
            font-size: x-large;
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
            text-decoration: underline;
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
            font-size: x-large;
        }

        .auto-style19 {
            width: 100%;
            height: 289px;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style22 {
            width: 710px;
            font-size: large;
        }
        .auto-style23 {
            font-size: x-large;
        }

        .auto-style24 {
            font-size: large;
            color: #FEFFFF;
        }
        .auto-style25 {
            color: #FEFFFF;
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
            <td class="auto-style23">
               <ul>
                   <li><a href="#"> <asp:Label ID="Labelwelcome" runat="server" Text="Welcome" Height="25px" Font-Size="18px" CssClass="auto-style18" ></asp:Label></a>
                       <ul>
                           <li class="auto-style23"><a href="profileforuser.aspx">Profile</a></li>
                            <li class="auto-style23"><a href="watchlist.aspx">Watch List</a></li>
                            <li class="auto-style23"><a href="http://localhost:24325/">Logout</a></li>
                       </ul>
                   </li>
               </ul>
            
            


            </td>
            <td><a href="search.aspx" class="auto-style16"><span class="auto-style21">Search</span></a>
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

            <table class="auto-style19">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style14"><strong>Movies</strong></td>
                    <td>&nbsp;</td>
                    <td class="auto-style14"><strong>Free Movies</strong></td>
                    <td class="auto-style14"><strong>Help</strong></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Action</span></a></td>
                    <td class="auto-style20"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">History</span></a></td>
                    <td class="auto-style24"><a href="seefree.aspx" class="auto-style16"><span class="auto-style25">13 Reason Why</span></a></td>
                    <td class="auto-style20"><a href="userrequest.aspx" class="auto-style16"><span class="auto-style17">Request</span></a></td>
                </tr>
                <tr>
                    <td class="auto-style22"><strong><span class="auto-style20">Movie Portal</span></strong><span class="auto-style20">, here you can watch movies online in higher quality for free without </span> </td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Amination</span></a></td>
                    <td class="auto-style20"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Horror</span></a></td>
                    <td class="auto-style24"><a href="seefree.aspx" class="auto-style16"><span class="auto-style25">Truth or Dare</span></a></td>
                    <td><span class="auto-style21"><a href="faq2.aspx" class="auto-style16"><span class="auto-style17">FAQ</span></a></span></a></td>
                </tr>
                <tr>
                    <td class="auto-style22"><span class="auto-style20">annoying of </span>advertising, so just come and enjoy watching...</td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Comedy</span></a></td>
                    <td class="auto-style20"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Thriller</span></a></td>
                    <td class="auto-style24"><a href="seefree.aspx" class="auto-style16"><span class="auto-style25">Black Panther</span></a></td>
                    <td class="auto-style20"><a href="contact2.aspx" class="auto-style16"><span class="auto-style17">Contact Us</span></a> </td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Crime</span></a></td>
                    <td class="auto-style20"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Romantic</span></a></td>
                    <td class="auto-style24"><a href="seefree.aspx" class="auto-style16"><span class="auto-style25">Deadpool2</span></a></td>
                    <td class="auto-style20"><a href="feedbackmanager.aspx" class="auto-style16"><span class="auto-style21">Feedback</span></a></td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Drama</span></a></td>
                    <td class="auto-style20"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">TV series</span></a></td>
                    <td class="auto-style24"><a href="seefree.aspx" class="auto-style16"><span class="auto-style25">12 Strong</span></a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style24"><a href="movies2.aspx" class="auto-style16"><span class="auto-style25">Family</span></a></td>
                    <td></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>

          
    
    </form>
    
</body>
</html>
