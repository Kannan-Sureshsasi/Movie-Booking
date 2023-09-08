using System;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class LoginPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Password = txtPassword.Text;

            string connectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionStrings))
            {
                string query = "SELECT * FROM RegisterPage WHERE FullName = @FullName AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", Username);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Session["username"] = Username;

                        Response.Redirect("~/MainPage.aspx");
                    }
                    else
                    {
                        string errorMessage = "Wrong username or password. Please try again.";
                        using (Label lblErrorMessage = new Label())
                        {
                            lblErrorMessage.ID = "lblErrorMessage";
                            lblErrorMessage.Text = errorMessage;
                            this.Controls.Add(lblErrorMessage);
                        }
                    }
                }
            }
        }
    }
}