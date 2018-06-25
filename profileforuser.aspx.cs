using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class profileadmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["userid"] != null)
        {
            Label1.Text = Request.Cookies["userid"].Value.ToString();
        }
        else if (Session["New"] != null)
        {
            Label1.Text = Session["New"].ToString();
        }

      

    }

   
}