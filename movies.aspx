<%@ Page Language="C#" AutoEventWireup="true" CodeFile="movies.aspx.cs" Inherits="movies" %>

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
    background-size: cover;}
        .auto-style1 {
            width: 100%;
            height: 719px;
        }
        .auto-style4 {
            width: 299px;
            height: 189px;
            margin-top: 0px;
        }
        .auto-style5 {
            width: 269px;
            height: 323px;
            text-align: center;
            background-color: black;
        }
        .auto-style7 {
            background-color: #999999;
            font-size: large;
        }
        .auto-style8 {
            color: #FFFFFF;
        }
        .auto-style9 {
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style10 {
            text-align: right;
        }
        .auto-style11 {
            text-decoration: none;
        }
        .auto-style12 {
            font-size: large;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5">
                      <img src="images/a.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Furious7</span><br />
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/b.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Spyder</span><br />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/c.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Avatar</span><br />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label3" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                      <img src="images/d.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Toy4</span><br />
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/e.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Zootopia</span><br />
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label5" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/f.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Act of Valor</span><br />
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                      <img src="images/j.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">Looper</span><br />
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/h.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">3 idiots</span><br />
                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label8" runat="server" CssClass="auto-style8"></asp:Label>
                    </td>
                    <td class="auto-style5">
                      <img src="images/i.jpg" alt="photo 5" <br class="auto-style4" />
                        <br />
                        <span class="auto-style9">PK</span><br />
                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="play" CssClass="auto-style7" />
                        <br />
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
               
            </table>
             <p class="auto-style10">
           <a href="http://localhost:24325/" class="auto-style11"><strong><span class="auto-style12">Go to Home</span></strong></a>
             </p>
        </div>
    </form>
</body>
</html>
