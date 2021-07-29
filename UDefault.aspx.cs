using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UDefault : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["onlinekitap"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        baglanti.Open();
        SqlCommand command = new SqlCommand("Select TOP 6 * from Tbl_Kitap ORDER BY satisadedi DESC ", baglanti);
        var reader = command.ExecuteReader();
        Repeater3.DataSource = reader;
        Repeater3.DataBind();
        reader.Close();

        SqlCommand command2 = new SqlCommand("Select TOP 6 * from Tbl_Kitap ORDER BY NEWID()", baglanti);
        var reader2 = command2.ExecuteReader();
        Repeater5.DataSource = reader2;
        Repeater5.DataBind();
        reader2.Close();

        SqlCommand command3 = new SqlCommand("Select TOP 6 * from Tbl_Kitap ORDER BY kitapid DESC", baglanti);
        var reader3 = command3.ExecuteReader();
        Repeater4.DataSource = reader3;
        Repeater4.DataBind();
        reader3.Close();

        baglanti.Close();
    }
}