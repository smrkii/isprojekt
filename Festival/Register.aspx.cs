using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ime_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Prijava_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Login.aspx");
        }

        protected void Registracija_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\smrki\\Documents\\is\\Festival\\Festival\\App_Data\\Festival.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("CreateUser", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("Ime", Ime.Text);
            SqlParameter p2 = new SqlParameter("Priimek", Priimek.Text);
            SqlParameter p3 = new SqlParameter("Up_ime", Up_ime.Text);
            SqlParameter p4 = new SqlParameter("Geslo", Geslo.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
            com.Parameters.Add(p3);
            com.Parameters.Add(p4);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            
        }
    }
}