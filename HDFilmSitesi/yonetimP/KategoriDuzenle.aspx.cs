using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_KategoriDuzenle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    string gelenKategoriId;
    protected void Page_Load(object sender, EventArgs e)
    {
        gelenKategoriId = Request.QueryString["kategoriId"];
        if (!Page.IsPostBack)
        {
            DataRow drKategori = veri.getDataRow("select * from kategoriler where kategoriId=" + gelenKategoriId);
            txtKategoriAdi.Text = drKategori["kategoriAd"].ToString();
        }
    }

    protected void ibtnGuncelle_Click(object sender, ImageClickEventArgs e)
    {
        veri.cmd("update kategoriler set kategoriAd='" + txtKategoriAdi.Text + "' where kategoriId=" + gelenKategoriId);
        Response.Redirect("Kategoriler.aspx");
    }
    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {

    }
}