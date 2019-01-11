using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Festival
{
    public partial class Rezervacija : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        

        protected void Festivali_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            Lokacije.DataBind();
            
        }




        protected void GoBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("./User.aspx");
        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        

        protected void SqlDataSource5_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            var value = Festivali.SelectedValue;
            string strUser1 = Festivali.SelectedValue.ToString();
            e.Command.Parameters["@idFes"].Value = value;


            string strcon = "Data Source=smrki.database.windows.net;Initial Catalog=Festival;Persist Security Info=True;User ID=smrki;Password=Zigas1213";
            SqlConnection con = new SqlConnection(strcon);
            SqlCommand com = new SqlCommand("Select * from Festival where Id ="+ value + "",con);
            con.Open();
            SqlDataReader rd = com.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {
                
                    String dan = "";
                    String leto = "";
                    String mesec = "";

                    int Cena_Na_Dan = Convert.ToInt32(rd["Cena_Na_Dan"]);

                    /*
                    String od = rd["Trajanje_Od"].ToString().Replace(". ","-");
                    od = od.Substring(0,od.IndexOf(" "));
                    
                    dan= od.Substring(0,2);
                    mesec = od.Substring(3, 2);
                    leto = od.Substring(6, 4);

                    od = leto + "-"+mesec + "-" + dan;

                    String dos =rd["Trajanje_Do"].ToString().Replace(". ", "-");
                    dos = dos.Substring(0, dos.IndexOf(" "));

                    dan = dos.Substring(0, 2);
                    mesec = dos.Substring(3, 2);
                    leto = dos.Substring(6, 4);

                    dos = leto + "-" + mesec + "-" + dan;
                    */

                    
                    int cenaLok = Convert.ToInt32(Lokacije.SelectedValue);

                    

                    Ime.Text = Session["UserID"].ToString();
                   // Priimek.Text = dos;
                    Cena.Text = (Cena_Na_Dan).ToString();
                    cenlok.Text = Convert.ToString(Lokacije.SelectedValue);

                    
                    /*
                    from_date.Text = od;
                    to_date.Text = dos;

                    from_date.Attributes.Add("min", od);
                    from_date.Attributes.Add("max", dos);

                    to_date.Attributes.Add("min", od);
                    to_date.Attributes.Add("max", dos);
                    */

                }

                
            }


            

            

            
        }

        protected void Zakljuci_Click(object sender, EventArgs e)
        {
            string strcon = "Data Source=smrki.database.windows.net;Initial Catalog=Festival;Persist Security Info=True;User ID=smrki;Password=Zigas1213";
            SqlConnection con = new SqlConnection(strcon);

            



            int UserID= Convert.ToInt32(Ime.Text);
            int FestivalID = Convert.ToInt32(Festivali.SelectedValue);
            int LokacijaID = 0;
            int Cena = Convert.ToInt32(Konec.Text);
            String Od = from_date.Text.ToString().Replace("-", ".");
            String Do = to_date.Text.ToString().Replace("-", ".");
            int CenaLok = Convert.ToInt32(cenlok.Text);

            con.Open();
            SqlCommand com = new SqlCommand("Select Id from Lokacija_Na_Festivalu where Id ="+ FestivalID + " and  Cena_Lokacije ="+ CenaLok + "", con);
            SqlDataReader rd = com.ExecuteReader();

            if (rd.HasRows)
            {
                while (rd.Read())
                {
                    LokacijaID= Convert.ToInt32(rd["Id"]);
                }
            }
            rd.Close();
            //con.Close();
            com = null;
            //con.Open();
            com = new SqlCommand("Insert into Vstopnica(ID_Festivala,ID_Obiskovalca,Velja_Od,Velja_Do,Cena)" +
               "VALUES(" + FestivalID + "," + UserID + ",'" + Od + "','" + Do + "',"+Cena+")", con);



            //con.Close();
            //con.Open();
            com.ExecuteNonQuery();
            con.Close();


        }
    }
}