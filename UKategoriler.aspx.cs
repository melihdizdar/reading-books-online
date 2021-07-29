using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration; // Web.config için
using System.Data.SqlClient; // sql server nesneleri için
public partial class UKategoriler : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Listele();
    }
    protected void Listele()
    {
        //repater kontrolünü veriyle doldurur.
        //aspx kısmında eğer row olmazsa alt alta sıralanır.
        SqlCommand komut = new SqlCommand("Select * From Tbl_Kategori", baglanti);
        baglanti.Open();
        Repeater1.DataSource = komut.ExecuteReader();
        Repeater1.DataBind();
        baglanti.Close();
    }
}