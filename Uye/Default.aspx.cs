using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Uye_Default : System.Web.UI.Page
{

    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        //SqlCommand komut = new SqlCommand("dbo.sp_UyeBakiyeYukle", baglanti);
        //komut.Connection = baglanti;
        //komut.Parameters.AddWithValue("@girilenbakiye", TextBox1.Text);
        //komut.CommandType = CommandType.StoredProcedure;
        //SqlDataReader sorgu;
        //sorgu = komut.ExecuteReader();

        baglanti.Open();
        SqlCommand komut = new SqlCommand("SELECT * From Tbl_Uyeler WHERE UyeId=@id",baglanti);
        var id = Session["OturumTc"];
        komut.Parameters.AddWithValue("@id", id);
        SqlDataReader reader = komut.ExecuteReader();
        decimal bakiye = 0;
        while(reader.Read())
        {
            bakiye = (decimal) reader["Bakiye"];
        }
        reader.Close();
        try
        {
            var girilenbakiye = Convert.ToDecimal(TextBox1.Text);
            SqlCommand ekleKomutu = new SqlCommand("Update Tbl_Uyeler SET Bakiye=@bakiye WHERE UyeId=@id",baglanti);
            ekleKomutu.Parameters.AddWithValue("@bakiye", ( bakiye + girilenbakiye));
            ekleKomutu.Parameters.AddWithValue("@id", id);
            ekleKomutu.ExecuteNonQuery();
        }
        catch (Exception excep)
        {
            var exception = excep;
        }
        baglanti.Close();
        Response.Redirect(HttpContext.Current.Request.Url.AbsoluteUri);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        /*string sql = "Update Tbl_Uyeler SET Sifre=@Sif Where UyeId=@Tc";
        SqlCommand komut = new SqlCommand();
        komut.CommandText = sql;
        komut.Connection = baglanti;
        komut.Parameters.AddWithValue("@Sif", TextBox2.Text);
        komut.Parameters.AddWithValue("@Tc", Session["OturumTc"]);
        baglanti.Open();
        komut.ExecuteNonQuery();
        komut.Dispose();
        baglanti.Close();*/
    }
}