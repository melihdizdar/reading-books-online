using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UKitaplar : System.Web.UI.Page
{

    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        mylabel.Visible = false;
    }

    protected void LinkButton1_Click(object sender, CommandEventArgs e)
    {
        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * From Tbl_Uyeler WHERE UyeId=@id", baglanti);
        var id = Session["OturumTc"];
        komut.Parameters.AddWithValue("@id", id);
        SqlDataReader reader = komut.ExecuteReader();
        decimal bakiye = 0;
        while (reader.Read())
        {
            bakiye = (decimal)reader["Bakiye"];
        }
        reader.Close();

        var kitapid = e.CommandArgument;
        SqlCommand kitapkomut = new SqlCommand("SELECT * From Tbl_Kitap Where kitapid=@id",baglanti);
        kitapkomut.Parameters.AddWithValue("@id", kitapid);
        SqlDataReader kitapreader = kitapkomut.ExecuteReader();
        decimal kitapfiyati = 0;

        while (kitapreader.Read())
        {
            kitapfiyati = (decimal) kitapreader["kitapfiyat"];
        }
        kitapreader.Close();


        if(bakiye < kitapfiyati)
        {
            mylabel.Visible = true;
        }
        else
        {
            SqlCommand kontrolcift = new SqlCommand("Select * from Tbl_Profil Where kitapid=@kitapid and UyeId=@uyeid",baglanti);
            kontrolcift.Parameters.AddWithValue("@kitapid", kitapid);
            kontrolcift.Parameters.AddWithValue("@uyeid", id);
            SqlDataReader kontrolreader = kontrolcift.ExecuteReader();
            if (kontrolreader.Read())
            {
               
            }
            else
            {
                kontrolreader.Close();
                //bakiyeyi çek
                bakiye -= kitapfiyati;
                SqlCommand bakiyedusur = new SqlCommand("Update Tbl_Uyeler Set Bakiye=@bakiye Where UyeId=@id", baglanti);
                bakiyedusur.Parameters.AddWithValue("@bakiye", bakiye);
                bakiyedusur.Parameters.AddWithValue("@id", id);
                bakiyedusur.ExecuteNonQuery();

                //kitabı ver
                SqlCommand kitapsat = new SqlCommand("INSERT INTO Tbl_Profil (kitapid,UyeId) Values (@kitapid,@uyeid)", baglanti);
                kitapsat.Parameters.AddWithValue("@kitapid", kitapid);
                kitapsat.Parameters.AddWithValue("@uyeid", id);
                kitapsat.ExecuteNonQuery();
                mylabel.Visible = false;
            }
            kontrolreader.Close();
            Response.Redirect("/Uye/UyeKitap.aspx");
        }
        baglanti.Close();

    }
}