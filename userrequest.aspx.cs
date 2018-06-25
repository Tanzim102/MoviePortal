using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class userreg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into ReqTable (name,movie,Director) values (@name,@movie,@Director)";
        SqlCommand com = new SqlCommand(insertQuery, conn);


        com.Parameters.AddWithValue("@name", TextBox1.Text);
        com.Parameters.AddWithValue("@movie", TextBox2.Text);
        com.Parameters.AddWithValue("@Director", TextBox3.Text);


        com.ExecuteNonQuery();
        Label1.Text = "Thank you";
        
       
        conn.Close();
    }
}