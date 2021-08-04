using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_yonetimStill_Filmler : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dtFilmler = veri.getDataTable("SELECT Filmler.*, altKategoriler.*, kategoriler.* FROM ((Filmler INNER JOIN altKategoriler ON Filmler.AltkategoriId = altKategoriler.AltkategoriId) INNER JOIN kategoriler ON altKategoriler.kategoriId = kategoriler.kategoriId) ORDER BY filmId DESC");
            DlFilmler.DataSource = dtFilmler;
            DlFilmler.DataBind();
        }

        if (Request.QueryString["filmId"] != null & Request.QueryString["islem"] == "sil")
        {
            string gelenfilmId = Request.QueryString["filmId"];
            veri.cmd("Delete from Filmler where filmId=" + gelenfilmId);
            Response.Redirect("Filmler.aspx");
        }
    }
}