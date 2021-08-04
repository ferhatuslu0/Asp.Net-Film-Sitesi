using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_Kategoriler : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dtKategoriler = veri.getDataTable("select * from kategoriler");
        dlKategoriler.DataSource = dtKategoriler;
        dlKategoriler.DataBind();

        if (Request.QueryString["kategoriId"] != null & Request.QueryString["islem"] == "sil")
        {
            string gelenKategoriId = Request.QueryString["kategoriId"];
            veri.cmd("Delete from kategoriler where kategoriId=" + gelenKategoriId);
            Response.Redirect("Kategoriler.aspx");
        }
    }
}