using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class loginadmin : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string Uname = adminname.Text;
            string Upass = password.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string matchQuery = "select Password from AdminTable where AdminName='" + adminname.Text + "' ";
            SqlCommand com = new SqlCommand(matchQuery, conn);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read())
            {
                if (remembermee.Checked == true)
                {
                    Response.Cookies["userid"].Value = adminname.Text;
                    Response.Cookies["userid"].Expires = DateTime.Now.AddSeconds(10);
                }
                else
                {
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["New"] = adminname.Text;
                Response.Write("login successful!");
                Response.Redirect("afterloginadmin.aspx");
            }
            else
            {
                Response.Write("wrong username or password!");

            }
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:");
        }
    }
}
