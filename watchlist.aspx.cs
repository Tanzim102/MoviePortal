using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class watchlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         
    }
 

    protected void Button1_Click2(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();
        string insertQuery = "insert into WatchTable (MovieName, Director, Rating) values (@Mname,@director,@Rat)";
        SqlCommand com = new SqlCommand(insertQuery, conn);
        com.Parameters.AddWithValue("@Mname", mov.Text);
        com.Parameters.AddWithValue("@director", dir.Text);

        com.Parameters.AddWithValue("@Rat", rat.Text);


        com.ExecuteNonQuery();

        conn.Close();
    }
}