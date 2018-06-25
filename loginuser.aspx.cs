using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class fgbgbgf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            string Uname = username.Text;
            string Upass = pasword.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();

            string matchQuery = "select paassword from RegisterTable where Usernaame='" + username.Text + "' ";
            SqlCommand com = new SqlCommand(matchQuery, conn);
            SqlDataReader sdr = com.ExecuteReader();
            if (sdr.Read())
            {
                if (rememberme.Checked == true)
                {
                    Response.Cookies["userid"].Value = username.Text;
                    Response.Cookies["userid"].Expires = DateTime.Now.AddSeconds(10);
                }
                else
                {
                    Response.Cookies["userid"].Expires = DateTime.Now.AddDays(-1);
                }

                Session["New"] = username.Text;
                Response.Write("login successful!");
                Response.Redirect("AfterLogin.aspx");
            }
            else
            {
                Response.Write("wrong username or password!");

            }
            conn.Close();
        }

        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
}