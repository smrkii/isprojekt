using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class Pregled : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            
            e.Command.Parameters["@id"].Value = Convert.ToInt32(Session["UserID"]);
        }

        protected void Nazaj_Click(object sender, EventArgs e)
        {
            Response.Redirect("./User.aspx");
        }
    }
}