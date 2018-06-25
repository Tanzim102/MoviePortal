using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class plz : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            PopuledGridView();
        }
    }
    void PopuledGridView()
    {
        DataTable dtbl = new DataTable();
        using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString))
        {
            sqlCon.Open();
            SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM guestfeedback", sqlCon);
            sqlDa.Fill(dtbl);
        }
        if (dtbl.Rows.Count > 0)
        {
            gfeed.DataSource = dtbl;
            gfeed.DataBind();
        }
        else
        {
            dtbl.Rows.Add(dtbl.NewRow());
            gfeed.DataSource = dtbl;
            gfeed.DataBind();
            gfeed.Rows[0].Cells.Clear();
            gfeed.Rows[0].Cells.Add(new TableCell());
            gfeed.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
            gfeed.Rows[0].Cells[0].Text = "No Data Found...";
            gfeed.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
        }



    }

    protected void gfeed_RowCommand(object sender, GridViewCommandEventArgs e)
    {

    }

    protected void gfeed_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            using (SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString))
            {
                sqlCon.Open();
                string query = "Delete * from guestfeedback where id=@id";
                SqlCommand sqlCmnd = new SqlCommand(query, sqlCon);
                sqlCmnd.Parameters.AddWithValue("@id", Convert.ToInt32(gfeed.DataKeys[e.RowIndex].Value.ToString()));
                sqlCmnd.ExecuteNonQuery();
              
                PopuledGridView();
                lblsuc.Text = "Selected one is deleted";
                lblerr.Text = "";

            }
        }

        catch(Exception ex)
        {
            lblsuc.Text = "";
            lblerr.Text=ex.Message;
        }

        
}
}
