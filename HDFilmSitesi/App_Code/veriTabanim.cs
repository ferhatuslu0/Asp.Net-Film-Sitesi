using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Drawing;
using System.IO;

/// <summary>
/// Summary description for veriTabanim
/// </summary>
public class veriTabanim
{
	public veriTabanim()
	{
		
	}

    public OleDbConnection baglanti()
    {
        OleDbConnection baglanti = new OleDbConnection(System.Configuration.ConfigurationManager.ConnectionStrings["BaglamaCumlesi"].ConnectionString);
        baglanti.Open();
        return baglanti;
    }

    public int cmd(string sqlCumle)
    {
        OleDbConnection baglanti = this.baglanti();
        OleDbCommand sorgu = new OleDbCommand(sqlCumle, baglanti);
        int sonuc = 0;

        try
        {
            sonuc = sorgu.ExecuteNonQuery();
        }
        catch (OleDbException ex)
        {

            throw new Exception(ex.Message + "(" + sqlCumle + ")");
        }
        sorgu.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return sonuc;
    }

    public DataTable getDataTable(string sql)
    {
        OleDbConnection baglanti = this.baglanti();
        OleDbDataAdapter adapter = new OleDbDataAdapter(sql, baglanti);
        DataTable dt = new DataTable();

        try
        {
            adapter.Fill(dt);
        }
        catch (OleDbException ex)
        {

            throw new Exception(ex.Message + "(" + sql + ")");
        }
        adapter.Dispose();
        baglanti.Close();
        baglanti.Dispose();
        return dt;
    }

    public DataRow getDataRow(string sql)
    {
        DataTable tablo = this.getDataTable(sql);

        if (tablo.Rows.Count == 0)
        {
            return null;
        }
        return tablo.Rows[0];
    }

    public string getDataCell(string sql)
    {
        DataTable tablo = this.getDataTable(sql);

        if (tablo.Rows.Count == 0)
        {
            return null;
        }
        return tablo.Rows[0][0].ToString();
    }


    public string ResimKaydet(FileUpload fuYukle, int sonGenislik, string gercekYol)
    {
        string yoluKaydet;
        string geciciYol = "../filmler/Gecici/";
        string resimAd = DateTime.Now.Ticks.ToString();
        string resimUzanti = Path.GetExtension(fuYukle.PostedFile.FileName);
        fuYukle.SaveAs(HttpContext.Current.Server.MapPath(geciciYol + resimAd + resimUzanti));
        Bitmap bmp = new Bitmap(HttpContext.Current.Server.MapPath(geciciYol + resimAd + resimUzanti));
        using (Bitmap orjinalResim = bmp)
        {
            double resimYukseklik = orjinalResim.Height;
            double resimGenislik = orjinalResim.Width;
            double oran = resimGenislik / resimYukseklik;
            resimGenislik = sonGenislik;
            resimYukseklik = resimGenislik / oran;
            Size yeniDegerler = new Size(Convert.ToInt32(resimGenislik), Convert.ToInt32(resimYukseklik));
            Bitmap yeniResim = new Bitmap(orjinalResim, yeniDegerler);
            yeniResim.Save(HttpContext.Current.Server.MapPath(gercekYol + resimAd + resimUzanti));
            yoluKaydet = gercekYol + resimAd + resimUzanti;
            orjinalResim.Dispose();
            bmp.Dispose();
            yeniResim.Dispose();
        }
        FileInfo silinecek = new FileInfo(HttpContext.Current.Server.MapPath(geciciYol + resimAd + resimUzanti));
        silinecek.Delete();
        return (yoluKaydet);
    }

   
}