using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_AltKategoriEkle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();

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
        if (!Page.IsPostBack)
        {
            kategoriDoldur();
        }
    }

    protected void ibtnEkle_Click(object sender, ImageClickEventArgs e)
    {
        veri.cmd("insert into altKategoriler (AltkategoriAd, kategoriId) values('" + txtAltKategoriAdi.Text + "','" + ddlKategoriler.SelectedValue + "')");
        Response.Redirect("AltKategoriler.aspx");
    }
    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("AltKategoriler.aspx");
    }
}