using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class iletisim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btntemizle_Click(object sender, EventArgs e)
    {
        Temizle();
    }
    void Temizle()
    {
        tb_adsoyad.Text = "";
        tb_eposta.Text = "";
        tb_mesaj.Text = "";
        tb_mesaj_metni.Text = "";
        tb_telefon.Text = "";
        lbldurum.Text = "";
    }
    protected void btngonder_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient Kaynak = new SmtpClient();
            Kaynak.Credentials = new System.Net.NetworkCredential("ferhatuslu0@gmail.com", "maviasi13");
            Kaynak.Host = "smtp.gmail.com";
            Kaynak.Port = 587;
            Kaynak.EnableSsl = true;
            MailAddress Gonderen = new MailAddress(tb_eposta.Text, tb_adsoyad.Text);
            MailAddress Giden = new MailAddress("ferhatuslu0@gmail.com", "HD Film Bizde");
            MailMessage Mesaj = new MailMessage(Gonderen, Giden);
            Mesaj.From = Gonderen;
            Mesaj.To.Add("ferhatuslu0@gmail.com");
            Mesaj.Subject = tb_mesaj.Text;
            Mesaj.Body = "Sitemiz Üzerinden bir mesaj bırakıldı <hr/>" + tb_mesaj.Text + "<hr/>" + tb_adsoyad.Text + tb_telefon.Text;
            Mesaj.IsBodyHtml = true;
            Kaynak.Send(Mesaj);
            Temizle();
            lbldurum.Text = "Mesajınız Bize Ulaştı. En Yakın Zamanda İlgileniyor Olacağız.";
            lbldurum.ForeColor = System.Drawing.Color.Green;
            lbldurum.Visible = true;
        }
        catch
        {

            lbldurum.Text = "Mesajınız Gönderilemedi. Lütfen Tekrar deneyin.";
            lbldurum.ForeColor = System.Drawing.Color.Red;
            lbldurum.Visible = true;
        }
    }
}