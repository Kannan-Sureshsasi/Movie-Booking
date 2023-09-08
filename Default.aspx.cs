using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Event_Booking
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            string FullName = txtFullName.Text;
            string Email = txtEmail.Text;
            string Password = txtPassword.Text;

            if (string.IsNullOrWhiteSpace(FullName) || string.IsNullOrWhiteSpace(Email) || string.IsNullOrWhiteSpace(Password))
            {
                ErrorMessageLabel.Text = "Please fill up all the required fields.";
                ErrorMessageLabel.Visible = true;
                return;
            }

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_Event_Booking", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "insert");
                    cmd.Parameters.AddWithValue("@FullName", FullName);
                    cmd.Parameters.AddWithValue("@Email", Email);
                    cmd.Parameters.AddWithValue("@Password", Password);
                    cmd.ExecuteNonQuery();
                    conn.Close();


                    Response.Redirect("~/LoginPage.aspx");
                }
            }
        }
    }
}