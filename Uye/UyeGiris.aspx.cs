using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Uye_UyeGiris : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "select * from Tbl_Uyeler Where UyeId=@tc and Sifre = @Sif";
        SqlCommand komut = new SqlCommand();
        komut.CommandText = sql;
        komut.Connection = baglanti;
        komut.Parameters.AddWithValue("@Tc", TextBox1.Text);
        komut.Parameters.AddWithValue("@Sif", TextBox2.Text);
        baglanti.Open();
        SqlDataReader satir = komut.ExecuteReader();
        if (satir.Read())
        {
            Session["kullaniciTipi"] = "Uyecik";
            Session["OturumTc"] = satir["UyeId"].ToString();
            Response.Redirect("~/Uye/Default.aspx");
        }
        else
        {
            Label2.Text = "Girişi bilgileriniz hatalı veya üye değilsiniz.";
        }
    }
}