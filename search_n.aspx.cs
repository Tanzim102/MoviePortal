using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class search_n : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
    string name;
    protected void Page_Load(object sender, EventArgs e)
    {
        name = Request.QueryString["nm"].ToString();

        conn.Open();

        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from movie where MovieName like '%" + name.ToString() + "%'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);

        Response.Write("<table class=\"table\" style=\"width: 800px\">");

        foreach (DataRow dr in dt.Rows)
        {
            Response.Write("<tr>");
            Response.Write("<td style=\"width:200px; left:20px; right:20px;\">"); Response.Write("<img style=\"top: 0px; left: 0px; height: 100px; width: 100px\" src=\"" + dr["Image"].ToString() + "\" />"); Response.Write("</td>");
            Response.Write("<td style=\"width:400px; left:20px; right:20px;\">"); Response.Write("<font color=\"white\">"); Response.Write(dr["MovieName"].ToString() +"<br> Director: "+ dr["Director"].ToString()  +"<br> Released Time: " + dr["ReleaseDate"].ToString() + "<br> Rating: " + dr["Rating"].ToString()); Response.Write("</font>"); Response.Write("</td>");
             
            Response.Write("</tr>");
        }
        Response.Write("</table>");
        conn.Close();
    }
}