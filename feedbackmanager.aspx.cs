using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class feedbackmanager : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into guestfeedback (name,feedback) values (@name,@feedback)";
        SqlCommand com = new SqlCommand(insertQuery, conn);


        com.Parameters.AddWithValue("@name", roll.Text);
        com.Parameters.AddWithValue("@feedback", password.Text);


        com.ExecuteNonQuery();

        Label2.Text = "Thank you";
         
        conn.Close();
        
    }
}