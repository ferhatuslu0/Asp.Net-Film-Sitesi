<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="yerlifilmler.aspx.cs" Inherits="yerlifilmler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="stil/stil.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.js"></script>
<script type='text/javascript' src="menu/js/jquery.cookie.js"></script>
<script type='text/javascript' src="menu/js/jquery.hoverIntent.minified.js"></script>
<script type='text/javascript' src="menu/js/jquery.dcjqaccordion.2.7.min.js"></script>
<link href="menu/css/dcaccordion.css" rel="stylesheet" type="text/css" />
<link href="menu/css/graphite.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function() {
    $('.filmgecisi').cycle({
		fx: 'scrollUp',
		pause:3
	});

});
$(document).ready(function ($) {
    $('#acilirmenu').dcAccordion({
        eventType: 'click',
        autoClose: true,
        saveState: true,
        disableLink: true,
        speed: 'slow',
        showCount: false,
        autoExpand: true,
        cookie: 'dcjq-accordion-1',
        classExpand: 'dcjq-current-parent'
    });

});
</script>

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

    <div id="orta">
        <div class="filmTasiyici">
        <asp:SqlDataSource ID="YerliFilmSqlDataSource" runat="server" 
            ConnectionString="<%$ ConnectionStrings:BaglamaCumlesi %>"
            ProviderName="<%$ ConnectionStrings:BaglamaCumlesi.ProviderName %>"
            SelectCommand="SELECT [filmId], [filmAd], [filmBilgi], [FilmUrl], [altKategoriId], [filmTuru] FROM [Filmler] WHERE ([filmTuru] = 'yerli') ORDER BY [filmId] DESC">
            
        </asp:SqlDataSource>
       <asp:Repeater ID="YerliFilmRepeater" runat="server" DataSourceID="YerliFilmSqlDataSource">
                <ItemTemplate>
                    <div class="ic_bolme">
                        
                        <div class="film">

                            <div class="filmFoto">
                                <img src="<%#Eval("FilmUrl") %>" />
                            </div>
                            <div class="filmBilgi">
                                Film Adı: <%#Eval("filmAd") %>
                                <br>
                                İmdb Puanı: <%#Eval("filmBilgi") %>
                            </div>
                           
                        </div>

                        
                    </div>

                </ItemTemplate>
           <FooterTemplate>
                  <asp:Label ID="lblfilm" runat="server" CssClass="filmYok" Text= "Aradığınız Film Bulunamadı Sitede Görmek İstediğiniz Filmi İletişim Kısmından İletiniz" Visible="<%#YerliFilmRepeater.Items.Count==0 %>"></asp:Label>
             </FooterTemplate>

            </asp:Repeater>

         </div>
	</div>
    
    <div class="sol">
        
<h3 class="basliklar">En Çok İzlenenler</h3>
        
<div class="filmgecisi">

<div class="solresim">			
        <img src="atıklar/avatar.jpg" />
        <img src="atıklar/troy.jpg" />
        <img src="atıklar/intikamyolu.jpg"/>
        <img src="atıklar/ghajini.jpg"/>
	</div>
    <div class="solresim">			
        <img src="atıklar/47 ronin.jpg"/>
        <img src="atıklar/127 saat.jpg"/>
        <img src="atıklar/aclık oyunları.jpg"/>
        <img src="atıklar/buyuk usta.jpg"/>
	</div>
    <div class="solresim">			
        <img src="atıklar/chucky.jpg"/>
        <img src="atıklar/colombiana.jpg"/>
        <img src="atıklar/escape.jpg"/>
        <img src="atıklar/hobbit.jpg"/>
	</div>
    <div class="solresim">			
        <img src="atıklar/parker.jpg"/>
        <img src="atıklar/piranha.jpg"/>
        <img src="atıklar/recepivedik.jpg"/>
        <img src="atıklar/wanted.jpg"/>
	</div>
     
</div>

</div>
    
<div class="sag">
     <div class="filmlerTasiyici">
        <div class="kategori">

        <h3 class="basliklar">Kategoriler</h3>
           <%-- açılı menü--%>
            <div class="graphite demo-container">
                <div class="arama">
                <p>                 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                 
                <asp:TextBox ID="txtArama"  runat="server"  CssClass="textBoxlar aramaText" Height="25px" Width="127px"></asp:TextBox> <br /><br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Button ID="btnara" runat="server" CssClass="iletisimButonlar myButton" Height="31px" Text="Ara" Width="150px" OnClick="btnara_Click" />
                  
               </p><br />

                 <%#altkategoriGetir((int)Eval("kategoriId")) %>
                    </div>

        <ul class="accordion"  id="acilirmenu">
           <asp:SqlDataSource ID="KategorilerSqlDataSource" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:BaglamaCumlesi %>" 
                            ProviderName="<%$ ConnectionStrings:BaglamaCumlesi.ProviderName %>" 
                            SelectCommand="SELECT * FROM [kategoriler]">

                        </asp:SqlDataSource>
                        <asp:Repeater ID="KategorilerRepeater" runat="server" DataSourceID="KategorilerSqlDataSource">
                            <ItemTemplate>
                             
                                <li><a href="#"><%#Eval("kategoriAd") %></a>
                                    
                                    <ul>
                                        <li><%#altkategoriGetir((int)Eval("kategoriId")) %></li>
                                        
                                    </ul>

                                </li>

                            </ItemTemplate>
                        </asp:Repeater>  



        </ul>
</div>
           <%-- açılır menü--%>

        </div>

    <div class="temizle"></div>

    </div>
</div>

</asp:Content>

