using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class PasswordReset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnResetPassword_Click(object sender, EventArgs e)
        {
            string FullName = txtFullName.Text;
            string Password = txtPassword.Text;

            if (string.IsNullOrEmpty(FullName) || string.IsNullOrEmpty(Password))
            {
                // Display an error message if either field is empty.
                ErrorMessagelbl.Text = "Please fill requierd fields.";
                ErrorMessagelbl.Visible = true;
                SuccessMessagelbl.Visible = false;
            }
            else
            {
                string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(connecttionString))
                {
                    using (SqlCommand cmd = new SqlCommand("ESP_Event_Booking", conn))
                    {
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@type", "Edit");
                        cmd.Parameters.AddWithValue("@FullName", FullName);
                        cmd.Parameters.AddWithValue("@Password", Password);

                        conn.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected < 0)
                        {
                            ErrorMessagelbl.Visible = false;
                            SuccessMessagelbl.Text = "Successfully Password Changed!";
                            SuccessMessagelbl.Visible = true;
                        }
                        else
                        {
                            ErrorMessagelbl.Text = "Username not found!";
                            ErrorMessagelbl.Visible = true;
                            SuccessMessagelbl.Visible = false;
                        }
                    }
                }
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            txtFullName.Text = "";
            txtPassword.Text = "";
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}