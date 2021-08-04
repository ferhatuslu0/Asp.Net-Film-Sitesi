using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_FilmEkle : System.Web.UI.Page
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
            kategoriDoldur();
            altKategoriDoldur();
        }
    }
    protected void iBtnEkle_Click(object sender, ImageClickEventArgs e)
    {
        string Yol;
        if (fuFoto.HasFile)
        {
            Yol = veri.ResimKaydet(fuFoto, 100, "/filmler/");
        }
        else
        {
            Yol = "/resimler/filmBulunamadi.png";
        }
        veri.cmd("INSERT INTO Filmler (filmAd, filmBilgi,filmTuru,altKategoriId,FilmUrl) VALUES ('" + txtFilmAd.Text + "', '" + txtFilmBilgi.Text + "', '"  + txtFilmTur.Text + "', '" + ddlAltKategoriler.SelectedValue + "', '" + Yol + "')");
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