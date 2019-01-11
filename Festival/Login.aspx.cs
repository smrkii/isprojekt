using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Prijava_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=smrki.database.windows.net;Initial Catalog=Festival;Persist Security Info=True;User ID=smrki;Password=Zigas1213";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("FindUser", con);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            SqlParameter p1 = new SqlParameter("Up_ime", Up_ime.Text);
            SqlParameter p2 = new SqlParameter("Geslo", Geslo.Text);
            com.Parameters.Add(p1);
            com.Parameters.Add(p2);
        
            con.Open();
            SqlDataReader rd = com.ExecuteReader();
            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    
                    Session["UserID"] = rd["Id"];
                    if ((Boolean)rd["admin"])
                    {
                        Response.Redirect("./Admin.aspx", false);
                    }
                    else {
                        Response.Redirect("./User.aspx", false);
                    }
                }
                    
                Label3.Visible = true;

                
            }
            else
            {
                Label3.Text = "Invalid username or password.";
                Label3.Visible = true;
            }
        }

        protected void Registracija_Click(object sender, EventArgs e)
        {
            Response.Redirect("./Register.aspx");
        }
    }
}