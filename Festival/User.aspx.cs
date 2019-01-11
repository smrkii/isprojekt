using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Rezervacija_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Rezervacija.aspx");
        }

        protected void Pregled_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Pregled.aspx");
        }

        protected void Odjava_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Login.aspx");
        }
    }
}