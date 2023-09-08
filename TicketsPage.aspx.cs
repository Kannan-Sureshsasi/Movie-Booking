using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class TicketsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            USName.Text = Session["username"] as string;
        }

        protected void Seat1_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat1.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat1.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat2_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat2.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat2.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat3_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat3.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat3.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat4_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat4.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat4.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat5_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat5.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat5.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat6_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat6.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat6.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat7_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat7.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat7.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat8_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat8.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat8.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat9_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat9.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat9.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat10_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat10.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat10.BackColor = Color.Magenta;
            }
            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat11_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat11.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat11.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat12_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat12.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat12.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat15_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat15.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat15.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat16_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat16.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat16.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat19_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat19.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat19.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat20_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat20.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat20.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat21_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat21.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat21.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat24_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat24.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat24.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat25_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat25.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat25.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat26_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat26.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat26.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat27_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat27.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat27.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat28_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat28.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat28.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat29_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat29.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat29.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }

        protected void Seat30_Click(object sender, EventArgs e)
        {
            Button clickedButton = (Button)sender;

            if (clickedButton.CssClass == "unselected")
            {
                clickedButton.CssClass = "selected";
                Seat30.BackColor = Color.LightGreen;
            }
            else
            {
                clickedButton.CssClass = "unselected";
                Seat30.BackColor = Color.Magenta;
            }

            int selectedCount = CountSelectedSeats();
            countSpan.Text = selectedCount.ToString();

            UpdateTotalPrice();
        }
        protected void MovieDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateTotalPrice();
        }

        protected void Paynow_Click(object sender, EventArgs e)
        {
            string selectedCount = countSpan.Text;
            string totalPrice = totalSpan.Text;

            string connecttionString = System.Configuration.ConfigurationManager.ConnectionStrings["Movie"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connecttionString))
            {
                using (SqlCommand cmd = new SqlCommand("ESP_Event_Booking", conn))
                {
                    conn.Open();
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@type", "TicketsPage");
                    cmd.Parameters.AddWithValue("@countSpan", selectedCount);
                    cmd.Parameters.AddWithValue("@totalSpan", totalPrice);
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
            Response.Redirect("~/PaymentPage.aspx");
        }

        private int CountSelectedSeats()
        {
            int selectedCount = 0;


            if (Seat1.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat2.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat3.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat4.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat5.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat6.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat7.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat8.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat9.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat10.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat11.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat12.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat15.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat16.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat19.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat20.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat21.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat24.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat25.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat26.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat27.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat28.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat29.CssClass == "selected")
            {
                selectedCount++;
            }

            if (Seat30.CssClass == "selected")
            {
                selectedCount++;
            }

            return selectedCount;
        }

        private void UpdateTotalPrice()
        {
            int selectedCount = CountSelectedSeats();

            if (MovieDropDown.SelectedIndex > 0) // Check if a movie is selected
            {
                int moviePrice = Convert.ToInt32(MovieDropDown.SelectedValue);
                int totalPrice = moviePrice * selectedCount;

                totalSpan.Text = "Total Price: RS." + totalPrice.ToString();
            }
            else
            {
                totalSpan.Text = "";
            }
        }
    }
}