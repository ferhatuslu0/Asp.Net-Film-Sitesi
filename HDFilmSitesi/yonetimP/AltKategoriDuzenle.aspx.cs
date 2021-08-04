using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_AltKategoriDuzenle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    string gelenAltKategoriId;

    void kategoriDoldur()
    {
        DataTable dtKategoriler = veri.getDataTable("select * from kategoriler");
        ddlKategoriler.DataSource = dtKategoriler;
        ddlKategoriler.DataValueField = "kategoriId";
        ddlKategoriler.DataTextField = "kategoriAd";
        ddlKategoriler.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        gelenAltKategoriId = Request.QueryString["AltkategoriId"];
        if (!Page.IsPostBack)
        {
            kategoriDoldur();
            DataRow drAltKategori = veri.getDataRow("select * from altKategoriler where AltkategoriId=" + gelenAltKategoriId);
            txtAltKategoriAdi.Text = drAltKategori["AltkategoriAd"].ToString();
            ddlKategoriler.SelectedValue = drAltKategori["kategoriId"].ToString();
        }
    }

    protected void ibtnGuncelle_Click(object sender, ImageClickEventArgs e)
    {
        veri.cmd("update altKategoriler set AltkategoriAd='" + txtAltKategoriAdi.Text + "',kategoriId='" + ddlKategoriler.SelectedValue + "' where AltkategoriId=" + gelenAltKategoriId);
        Response.Redirect("AltKategoriler.aspx");
    }
    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AltKategoriler.aspx");
    }
}