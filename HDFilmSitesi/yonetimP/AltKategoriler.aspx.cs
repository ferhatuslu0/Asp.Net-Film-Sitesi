using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_AltKategoriler : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtAltKategoriler = veri.getDataTable("select * from (kategoriler inner join altKategoriler on kategoriler.kategoriId=altKategoriler.kategoriId) order by AltkategoriId desc");
        dlAltKategoriler.DataSource = dtAltKategoriler;
        dlAltKategoriler.DataBind();

        if (Request.QueryString["AltkategoriId"] != null & Request.QueryString["islem"] == "sil")
        {
            string gelenAltKategoriId = Request.QueryString["AltkategoriId"];
            veri.cmd("Delete from altKategoriler where AltkategoriId=" + gelenAltKategoriId);
            Response.Redirect("AltKategoriler.aspx");
        }
    }
}