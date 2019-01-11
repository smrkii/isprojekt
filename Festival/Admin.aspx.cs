using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddUporabnik_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddUporabnika.aspx");
        }

        protected void AddFestival_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddFestival.aspx");
        }

        protected void AddDržava_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddDrzava.aspx");
        }

        protected void AddNastopajoči_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddNastopajoce.aspx");
        }

        protected void AddKraj_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddKraj.aspx");
        }

        protected void AddLokacija_Click(object sender, EventArgs e)
        {
            Response.Redirect("./AddLokacijoNaFestivalu.aspx");
        }

        protected void Nazaj_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Login.aspx");
        }
    }
}