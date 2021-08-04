using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_YonetimGirisi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uyeAd"] != null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnGiris_Click(object sender, EventArgs e)
    {
        girisSqlDataSource.SelectCommand = "SELECT * FROM [uyeler] WHERE ([yonetici]='admin' AND [uyeAd]='"
           + txtKullaniciAdi.Text + "' AND [uyeSifre]= '" + txtSifre.Text + "')";
        DataView tablo;
        tablo = (DataView)girisSqlDataSource.Select(DataSourceSelectArguments.Empty);
        int satirSay = tablo.Count;
        if (satirSay != 0)
        {
            DataRowView satir = tablo[0];
            Session["uyeAd"] = satir["uyeAd"];

            if (string.IsNullOrEmpty(Request.QueryString["Yonlen"]))
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Redirect(Request.QueryString["Yonlen"]);
            }
            Response.Redirect(Request.QueryString["Yonlen"]);
        }
        else
        {
            lblDurum.Visible = true;
        }
    }
}