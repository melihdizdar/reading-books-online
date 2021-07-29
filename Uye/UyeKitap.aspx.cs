using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration; // Web.config için
using System.Data.SqlClient; // sql server nesneleri için

public partial class Uye_UyeKitap : System.Web.UI.Page
{

    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();
        var userid = Session["OturumTc"];
        if (userid == null)
        {
            Response.Redirect("/Uye/UyeGiris.aspx");
            return;
        }
        SqlCommand tumkitaplar = new SqlCommand("Select  k.kitapid,kitapad,kitapkonu,kitapyazar,kitapfiyat from Tbl_Profil p inner join Tbl_Kitap k on p.kitapid = k.kitapid Where p.UyeId=@uyeid", baglanti);
        tumkitaplar.Parameters.AddWithValue("@uyeid", userid);
        SqlDataReader kitapreader = tumkitaplar.ExecuteReader();
        Repeater3.DataSource = kitapreader;
        Repeater3.DataBind();
        kitapreader.Close();
        baglanti.Close();
    }

    protected void Listele()
    {

    }
}