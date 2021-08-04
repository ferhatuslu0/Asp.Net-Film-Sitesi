using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetimP_UyeEkle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ibtnEkle_Click(object sender, ImageClickEventArgs e)
    {
        veri.cmd("insert into uyeler (uyeAd, uyeSifre, yonetici) values('" + txtUyeAdi.Text + "','" + txtUyeSifre.Text + "','" + txtYonetici.Text + "')");
        Response.Redirect("Uyeler.aspx");
    }

    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Uyeler.aspx");
    }
}