using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class PaymentPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SelectPayment_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SelectPayment.SelectedValue == "UPI")
            {
                UPIPaymentRow.Visible = true;
                CardRow.Visible = false;
            }
            else if (SelectPayment.SelectedValue == "Card")
            {
                UPIPaymentRow.Visible = false;
                CardRow.Visible = true;
            }
        }

        protected void MakePaymentButton_Click(object sender, EventArgs e)
        {
            string UPI = txtUPIID.Text;
            string Contact = txtContact.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_Event_Booking", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "UPIPayment");
                    cmd.Parameters.AddWithValue("@UPIID", UPI);
                    cmd.Parameters.AddWithValue("@Contact", Contact);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("~/TicketsSummary.aspx"); //upi
        }

        protected void PayNowButton_Click(object sender, EventArgs e)
        {
            string CardHolderName = txtCardHolderName.Text;
            string CardNumber = txtCardNumber.Text;
            string ExpryDate = txtExpryDate.Text;
            string CcvCode = txtCcvCode.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_Event_Booking", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "CardPayment");
                    cmd.Parameters.AddWithValue("@CardHolderName", CardHolderName);
                    cmd.Parameters.AddWithValue("@CardNumber", CardNumber);
                    cmd.Parameters.AddWithValue("@ExpryDate", ExpryDate);
                    cmd.Parameters.AddWithValue("@CcvCode", CcvCode);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("~/TicketsSummary.aspx"); //card
        }
    }
}