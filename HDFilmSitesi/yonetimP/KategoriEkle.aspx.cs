using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_KategoriEkle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ibtnEkle_Click(object sender, ImageClickEventArgs e)
    {
        veri.cmd("insert into kategoriler (kategoriAd) values('" + txtKategoriAdi.Text + "')");
        Response.Redirect("Kategoriler.aspx");
    }
    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Kategoriler.aspx");
    }
}