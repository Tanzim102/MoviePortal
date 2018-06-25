using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }

        if (Session["New"] != null)
        {
            Labelwelcome.Text = Session["New"].ToString();
        }
        else
        {
            Response.Redirect("http://localhost:24325/");
        }



    }

    private void SetImageUrl()
    {

        Random _rand = new Random();
        int i = _rand.Next(1, 12);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }





    protected void Logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("http://localhost:24325/");
    }
}