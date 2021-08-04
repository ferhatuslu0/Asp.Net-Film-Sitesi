<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="yonetimP_Kategoriler" %>

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
        .kategoriListesi{margin:20px;}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Yonetimicerik" Runat="Server">
    <h3 class="basliklar">Ana Kategori Listesi</h3>
  <div class="kategoriListesi">
    <asp:DataList ID="dlKategoriler" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Both" Width="802px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <HeaderTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:120px;">Kategori Adı</td>
                    <td style="width:100px;">Düzenle</td>
                    <td style="width:120px;">Sil</td>
                </tr>
            </table>
        </HeaderTemplate>
        <ItemStyle ForeColor="#000066" />
        <ItemTemplate>
            <table class="tablo">
                <tr>
                    <td style="width:120px;"><%#Eval("kategoriAd") %></td>
                    
                    <td style="width:100px;"><a href="KategoriDuzenle.aspx?kategoriId=<%#Eval("kategoriId") %>"><img src="../resimler/yonetim/duzenle.png" title="Düzenle" /></a></td>
                    <td style="width:100px;"><a href="Kategoriler.aspx?kategoriId=<%#Eval("kategoriId") %>&islem=sil" onclick="return confirm('Silmek İstediğinizden eminmisiniz?')"><img src="../resimler/yonetim/sil.png" title="Sil" /></a></td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
      </asp:DataList>
    </div>
</asp:Content>

