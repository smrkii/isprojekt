using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class AddNastopajoce : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ManageNastopajoci_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Nazaj_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Admin.aspx");
        }
    }
}