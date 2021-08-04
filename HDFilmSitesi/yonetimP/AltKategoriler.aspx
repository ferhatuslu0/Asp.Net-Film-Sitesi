<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="AltKategoriler.aspx.cs" Inherits="yonetimP_AltKategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tablo {
            box-shadow: 0px 0px 15px black;
            width: 100%;
            margin:10px;
            text-align:center;
            margin-left:0px;
            margin-right:0px;
        }
        .altKategoriListesi{margin:20px;}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" Runat="Server">


    <h3 class="basliklar">Alt Kategori Listesi</h3>
  <div class="altKategoriListesi">
    <asp:DataList ID="dlAltKategoriler" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" Width="805px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:120px;">Alt Kategori Adı</td>
                    <td style="width:120px;"">Kategori Adı</td>
                    <td style="width:100px;">Düzenle</td>
                    <td style="width:120px;">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:120px;"><%#Eval("altKategoriAd") %></td>
                    <td style="width:120px;"><%#Eval("kategoriAd") %></td>
                    
                    <td style="width:100px;"><a href="AltKategoriDuzenle.aspx?AltkategoriId=<%#Eval("AltkategoriId") %>"><img src="../resimler/yonetim/duzenle.png" title="Düzenle" /></a></td>
                    <td style="width:100px;"><a href="AltKategoriler.aspx?AltkategoriId=<%#Eval("AltkategoriId") %>&islem=sil" onclick="return confirm('Silmek İstediğinizden eminmisiniz?')"><img src="../resimler/yonetim/sil.png" title="Sil" /></a></td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
      </asp:DataList>
    </div>
</asp:Content>

