using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class yonetimP_Uyeler : System.Web.UI.Page
{
    veriTabanim veri = new veriTabanim();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            DataTable dtUyeler = veri.getDataTable("Select * from uyeler");
            dlUyeler.DataSource = dtUyeler;
            dlUyeler.DataBind();
        }
        if (Request.QueryString["uyeId"] != null & Request.QueryString["islem"] == "sil")
        {
            string gelenuyeıd = Request.QueryString["uyeId"];
            veri.cmd("Delete from uyeler where uyeId=" + gelenuyeıd);
            Response.Redirect("Uyeler.aspx");
        }
    }
}