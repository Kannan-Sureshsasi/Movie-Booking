using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Event_Booking
{
    public partial class HomeForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnRegister.Attributes["onmouseover"] = "this.style.backgroundColor='orange';";
            btnRegister.Attributes["onmouseout"] = "this.style.backgroundColor='#BADED0';";
            btnMoveBooking.Attributes["onmouseover"] = "this.style.backgroundColor='orange';";
            btnMoveBooking.Attributes["onmouseout"] = "this.style.backgroundColor='#BADED0';";
            btnLogin.Attributes["onmouseover"] = "this.style.backgroundColor='orange';";
            btnLogin.Attributes["onmouseout"] = "this.style.backgroundColor='#BADED0';";
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnMoveBooking_Click(object sender, EventArgs e)
        {
            string confirmMessage = "Are you sure you want to move the booking?";
            string script = "if (window.confirm('" + confirmMessage + "')) { window.location = 'MainPage.aspx'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "ConfirmRedirect", script, true);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }
}