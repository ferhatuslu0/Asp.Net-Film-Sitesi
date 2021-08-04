<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="Filmler.aspx.cs" Inherits="yonetimP_yonetimStill_Filmler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tablo{
            box-shadow: 0px 0px 15px black;
            width: 100%;
            margin:10px;
            text-align:center;
            margin-left:0px;
            margin-right:0px;
            
        }
        .AltKategoriListesi{ margin:20px; }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" Runat="Server">
    <h3 class="basliklar">Film Listesi</h3>
    <div class="AltKategoriListesi">
        <asp:DataList ID="DlFilmler" runat="server" CellPadding="3" Width="806px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" GridLines="Both">
            <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:80px;">Film Resim</td>
                    <td style="width:80px;">Film Adı</td>
                    <td style="width:80px;">Film Bilgi</td>
                    <td style="width:80px;"">AnaKategori Adı</td>
                    <td style="width:80px;">AltKategori Adı</td>
                    <td style="width:60px;">Film Türü</td>
                    <td style="width:50px;">Düzenle</td>
                    <td style="width:50px;">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
            <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:80px;"><img src='../<%#Eval("FilmUrl") %>' width="80" /></td>
                    <td style="width:80px;"><%#Eval("filmAd") %></td>
                    <td style="width:80px;"><%#Eval("filmBilgi") %></td>
                    <td style="width:80px;"><%#Eval("kategoriAd") %></td>
                    <td style="width:80px;"><%#Eval("AltkategoriAd") %></td>
                    
                    <td style="width:50px;"><a href="FilmDuzenle.aspx?filmId=<%#Eval("filmId") %>"><img src="../resimler/yonetim/duzenle.png" title="Düzenle" /></a></td>
                    <td style="width:50px;"><a href="Filmler.aspx?filmId=<%#Eval("filmId") %>&islem=sil" onclick='return confirm("Silmek istediğinize emin misiniz?")'><img src="../resimler/yonetim/sil.png" title="Sil"  /></a></td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </div>
</asp:Content>

