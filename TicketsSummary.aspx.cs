using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class TicketsSummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            USName.Text = Session["username"] as string;
        }
    }
}