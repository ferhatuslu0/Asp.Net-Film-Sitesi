using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["altKat"] != null)
        {
            String gelenKategoriId = Request.QueryString["altKat"];
            DefaultSqlDataSource.SelectCommand =
              "SELECT  * FROM [Filmler] WHERE ([filmTuru] = 'default' and [altKategoriId]=" + gelenKategoriId + ")";
        }
    }
    public string altkategoriGetir(int kategoriId)
    {
        string sonuc = "";

        OleDbConnection baglanti = new OleDbConnection(ConfigurationManager.ConnectionStrings["BaglamaCumlesi"].ConnectionString);
        OleDbCommand komut = new OleDbCommand("Select * From [altKategoriler] Where [kategoriId]=@kategoriId", baglanti);
        komut.Parameters.AddWithValue("@kategoriId", kategoriId);
        baglanti.Open();
        OleDbDataReader oku = komut.ExecuteReader();

        while (oku.Read())
        {
            sonuc += "<a href=Default.aspx?altKat=" + oku["altkategoriId"].ToString() + ">" + oku["altKategoriAd"].ToString() + "</a>";
        }
        baglanti.Close();
        return sonuc;
    }
    public void Arama(String Aranan)
    {
        string aramaCümlesi = "Select * from [Filmler] where ([filmTuru]='default' and [filmAd] like '%" + Aranan + "%')";
        DefaultSqlDataSource.SelectCommand = aramaCümlesi;

    }
    protected void btnara_Click(object sender, EventArgs e)
    {
        Arama(txtArama.Text);
    }
    protected void txtArama_TextChanged(object sender, EventArgs e)
    {
       
    }
}