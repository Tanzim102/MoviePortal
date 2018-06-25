using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class blaaa : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from RegisterTable where Usernaame='" + TextBox3.Text + "' ";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        if (temp > 0)
        {

            Response.Write("User already exits");
            string checkpasswordQuery = "select paassword from RegisterTable where Usernaame='" + TextBox3.Text + "' ";
            SqlCommand passCom = new SqlCommand(checkpasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox4.Text)
            {
                Session["New"] = TextBox3.Text;
                
                Response.Redirect("afterlogin.aspx");
            }
           

        }
      
        conn.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}