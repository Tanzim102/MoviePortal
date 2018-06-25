using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{



    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }

    private void SetImageUrl()
    {

        Random _rand = new Random();
        int i = _rand.Next(1, 10);
        Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }
   
}