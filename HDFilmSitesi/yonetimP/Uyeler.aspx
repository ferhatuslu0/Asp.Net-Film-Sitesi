<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="Uyeler.aspx.cs" Inherits="yonetimP_Uyeler" %>

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
        .kullaniciListesi{margin:20px; }
        
    </style>
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="Yonetimicerik" Runat="Server">

             <h3 class="yonetimbasliklar">Kullanıcı Listesi</h3>
             <div class="kullaniciListesi">
             <asp:DataList ID="dlUyeler" runat="server" CellPadding="4" Width="821px" style="margin-left: -10px" ForeColor="#333333">
             <AlternatingItemStyle BackColor="White" />
             <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
             <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
             <HeaderTemplate>
             <table class="tablo">
                <tr>
                    <td style="width:120px;">Üye Adı</td>
                    <td style="width:120px;">Üye Şifre</td>
                    <td style="width:120px;">Yönetici</td>
                    <td style="width:120px;">Düzenle</td>
                    <td style="width:120px;">Sil</>
                </tr>
             </table>
             </HeaderTemplate>
             <ItemStyle BackColor="#EFF3FB" />
             <ItemTemplate>
             <table class="tablo">
                <tr>
                    <td style="width:120px;"><%#Eval("uyeAd") %></td>
                    <td style="width:120px;"><%#Eval("uyeSifre") %></td>
                    <td style="width:120px;"><%#Eval("yonetici") %></td>
                    <td style="width:100px;"><a href="UyeDuzenle.aspx?uyeId=<%#Eval("uyeId") %>"><img src="../resimler/yonetim/duzenle.png" title="Düzenle" /></a></td>
                    <td style="width:100px;"><a href="Uyeler.aspx?uyeId=<%#Eval("uyeId") %>&islem=sil" onclick="return confirm('Silmek İstediğinizden eminmisiniz?')"><img src="../resimler/yonetim/sil.png" title="Sil" /></a></td>
                </tr>
             </table>
             </ItemTemplate>
             <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
             </asp:DataList>
             </div>

</asp:Content>


