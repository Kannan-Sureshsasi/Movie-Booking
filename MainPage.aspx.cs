using System;
using System.Web.UI;

namespace Event_Booking
{
    public partial class MainPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            USName.Text = Session["username"] as string;
        }

        protected void BookTicketsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TicketsPage.aspx");
        }

        protected void InterestedButton_Click(object sender, EventArgs e)
        {
            InterestedButton.Visible = false;
            ThankYouLabel.Visible = true;
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}