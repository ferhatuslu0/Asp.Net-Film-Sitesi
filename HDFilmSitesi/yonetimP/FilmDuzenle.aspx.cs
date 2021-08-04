using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_FilmDuzenle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    

    void kategoriDoldur()
    {
        DataTable dtKategoriler = veri.getDataTable("SELECT * FROM kategoriler");
        ddlKategoriler.DataSource = dtKategoriler;
        ddlKategoriler.DataValueField = "kategoriId";
        ddlKategoriler.DataTextField = "kategoriAd";
        ddlKategoriler.DataBind();
    }

    void altKategoriDoldur()
    {
        DataTable dtAltKategoriler = veri.getDataTable("SELECT * FROM altKategoriler WHERE kategoriId=" + ddlKategoriler.SelectedValue);
        ddlAltKategoriler.DataSource = dtAltKategoriler;
        ddlAltKategoriler.DataValueField = "AltkategoriId";
        ddlAltKategoriler.DataTextField = "AltkategoriAd";
        ddlAltKategoriler.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!Page.IsPostBack)
        {
            string gelenfilmId = Request.QueryString["filmId"];
            if (Request.QueryString["filmId"]!=null)
            {
            DataRow DrFilm = veri.getDataRow("SELECT Filmler.*, altKategoriler.*, kategoriler.* FROM ((Filmler INNER JOIN altKategoriler ON Filmler.AltkategoriId = altKategoriler.AltkategoriId) INNER JOIN kategoriler ON altKategoriler.kategoriId = kategoriler.kategoriId) WHERE filmId=" + gelenfilmId);
            txtfilmAd.Text = DrFilm["filmAd"].ToString();
            txtfilmBilgi.Text = DrFilm["filmBilgi"].ToString();
            kategoriDoldur();
            ddlKategoriler.SelectedValue = DrFilm["altKategoriler.kategoriId"].ToString();
            altKategoriDoldur();
            ddlAltKategoriler.SelectedValue = DrFilm["Filmler.AltkategoriId"].ToString();
            txtfilmTuru.Text = DrFilm["filmTuru"].ToString();
            imgFilmResim.ImageUrl = DrFilm["FilmUrl"].ToString();
            }

           

        }
    }
    protected void iBtnGuncelle_Click(object sender, ImageClickEventArgs e)
    {
        string Yol;
        string gelenfilmId = Request.QueryString["filmId"];
        if (fuFoto.HasFile)
        {
            Yol = veri.ResimKaydet(fuFoto, 100, "/filmler/");
        }
        else
        {
            Yol = imgFilmResim.ImageUrl;
        }
        veri.cmd("UPDATE Filmler SET filmAd='" + txtfilmAd.Text +
            "', filmBilgi='" + txtfilmBilgi.Text +
            "', filmTuru='" + txtfilmTuru.Text +
            "', altKategoriId='" + ddlAltKategoriler.SelectedValue +
            "', FilmUrl='" + Yol +
            "' WHERE filmId=" + gelenfilmId);
        Response.Redirect("Filmler.aspx");
    }
    protected void iBtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Filmler.aspx");
    }

    protected void ddlKategoriler_SelectedIndexChanged(object sender, EventArgs e)
    {
        altKategoriDoldur();
    }
}