<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stil/iletisim.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menuler">

<ul>
	<li><a href="Default.aspx" class="myButton">AnaSayfa</a></li>
    <li><a href="yerlifilmler.aspx" class="myButton">Yerli Filmler</a></li>
    <li><a href="yabancifilmler.aspx" class="myButton">Yabancı Filmler</a></li>
    <li><a href="encokizlenenler.aspx" class="myButton">En Çok İzlenenler</a></li>
    <li><a href="iletisim.aspx" class="myButton">İletişim</a></li>
    </ul>
	
	</div>
     <div class="iletisim">
    <div class="iletisim" style="padding:20px;">

       
        <div class="iletisimSol">
            <h3 class="basliklar">HD Film Bizde</h3>
            <div class="iletisimResim">
            <img src="resimler/iletisim.png" />

            </div>
            <br />
            <hr />
            Sitemizde Dizayn da Ve Film olarak<br />
            Görmek İstedikleriniz için<br />
                  Bize Ulaşın<br />
     
        </div>
        <div class="iletisimSag">
            <h3 class="basliklar">Bize Ulaşın</h3>
            <br />
            <br />
            Adı Soyadı
           
            <br />
            <asp:TextBox ID="tb_adsoyad" runat="server" CssClass="textBoxlar" Width="200px" Height="30px"></asp:TextBox>
            <br />
            E-posta
            <br />
            <asp:TextBox ID="tb_eposta" runat="server" CssClass="textBoxlar" Width="200px" Height="30px"></asp:TextBox>
            <br />
            Telefon
            <br />
            <asp:TextBox ID="tb_telefon" runat="server" CssClass="textBoxlar" Width="200px" Height="30px"></asp:TextBox>
            <br />
            Mesaj kutusu<br />
            <asp:TextBox ID="tb_mesaj" runat="server" CssClass="textBoxlar" Width="200px" Height="30px"></asp:TextBox>
            <br />
        &nbsp;Mesaj Metni
            <br />
            <asp:TextBox ID="tb_mesaj_metni" runat="server" CssClass="textBoxlar mesajAlani" Height="108px" TextMode="MultiLine" Width="366px"></asp:TextBox>
            <br />
            <asp:Label ID="lbldurum" runat="server" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btngonder" runat="server" Text="Gönder" Width="130px" CssClass="iletisimButonlar" OnClick="btngonder_Click" Height="50px" />
            &nbsp;<asp:Button ID="btntemizle" runat="server" Text="Temizle" Width="130px" CssClass="iletisimButonlar" OnClick="btntemizle_Click" Height="50px" />

        </div>

        
    </div>
         
         </div>
</asp:Content>

