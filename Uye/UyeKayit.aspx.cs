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
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Label1.Text = "Üye kaydınız başarı ile oluşturuldu. Giriş sayfasına yönlendiriliyorsunuz.";
    }
}