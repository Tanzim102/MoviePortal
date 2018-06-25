using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class registerr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from RegisterTable where Usernaame='" + user.Text + "' ";
            SqlCommand com = new SqlCommand(checkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp > 0)
            {
                Response.Write("User already exits");
            }
            conn.Close();
        }

    }

   

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            
            Guid newGuid = Guid.NewGuid();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into RegisterTable (ID,Usernaame,Emaail,Paassword) values (@id,@Uname,@email,@password)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
            com.Parameters.AddWithValue("@id", newGuid.ToString());
            com.Parameters.AddWithValue("@Uname", user.Text);
            com.Parameters.AddWithValue("@email", email.Text);
            com.Parameters.AddWithValue("@password", pass.Text);
       

            com.ExecuteNonQuery();

            SmtpClient smtp = new SmtpClient
            {
                Host = "smtp.gmail.com",
                Port = 587,
                Credentials = new NetworkCredential("shitutanzim0711@gmail.com", "savemefromsoitan0410"),
                EnableSsl = true
            };
            MailMessage msg = new MailMessage
            {
                Subject = "Hello " + user.Text + " Thanks Ror Registration",
                Body = "Hi,Thanks For Registration at Movie Portal"
            };
            string toaddress = email.Text;
            msg.To.Add(toaddress);
            string fromaddress = "Movie Portal <shitutanzim0711@gmail.com > ";
            msg.From = new MailAddress(fromaddress);


            try
            {
                smtp.Send(msg);
                Label1.Text = "Your Registration is Successful You can Check your mail too";
                user.Text = "";
                email.Text = "";

               
            }
            catch
            {
                throw;
            }


            Response.Write("Registration is Successful");

            conn.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error:" + ex.ToString());
        }
    }

    
}