using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_UyeDuzenle : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            if (Request.QueryString["uyeId"] != null)
            {
                string gelenUyeId = Request.QueryString["uyeId"];
                DataRow drUye = veri.getDataRow("select * from uyeler where uyeId=" + gelenUyeId);
                txtUyeAdi.Text = drUye["uyeAd"].ToString();
                txtUyeSifre.Text = drUye["uyeSifre"].ToString();
                txtYonetici.Text = drUye["yonetici"].ToString();
            }
        }
    }
    protected void ibtnGuncelle_Click(object sender, ImageClickEventArgs e)
    {
        if (Request.QueryString["uyeId"] != null)
        {
            string gelenUyeId = Request.QueryString["uyeId"];
            veri.cmd("update uyeler set uyeAd='" + txtUyeAdi.Text + "', uyeSifre='" + txtUyeSifre.Text + "', yonetici='" + txtYonetici.Text + "' where uyeId=" + gelenUyeId);
            Response.Redirect("Uyeler.aspx");
        }

    }
    protected void ibtnVazgec_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Uyeler.aspx");
    }
}