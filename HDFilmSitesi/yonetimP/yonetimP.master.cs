using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetimP_yonetimP : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uyeAd"] != null)
        {
            lblKullaniciAdi.Text = Session["uyeAd"].ToString();
        }
        else
        {

            Response.Redirect("YonetimGirisi.aspx?Yonlen=" + HttpContext.Current.Request.RawUrl);
        }
    }

    protected void ibtnCikis_Click(object sender, ImageClickEventArgs e)
    {
        Session.Abandon();
        Response.Redirect("../Default.aspx");
    }
}
