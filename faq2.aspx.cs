using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class faq2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "See our contact page, you can easily mail us also!";
        Label2.Text = " ";
        Label3.Text = " ";
        Label4.Text = " ";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = " ";
        Label3.Text = " ";
        Label4.Text = " ";
        Label2.Text = "We have uploaded some servers for each movie, if you get broken message for one server, let try with other servers.If all of them are broken, please report to us by click to Report button below player.";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Label4.Text = "Absolutely, Watching is totally legal. We also do not host the movies, we link to them.";
        Label1.Text = " ";
        Label3.Text = " ";
        Label2.Text = " ";

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Label4.Text = " ";
        Label1.Text = " ";
        Label3.Text = " Please use the Request form and we will upload these movies for you.";
        Label2.Text = " ";
    }
}