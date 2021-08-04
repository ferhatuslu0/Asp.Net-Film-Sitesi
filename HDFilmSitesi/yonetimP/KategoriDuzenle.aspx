<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="yonetimP_KategoriDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
      .tablostill {box-shadow: 0px 0px 20px black;
            width: 400px;
            font-family:'Trebuchet MS';font-size:medium;
            background-color:#0B82C4;
            color:white;
            padding:10px;
            margin-top:10px;
            margin-bottom:10px;
            
        }
         .tablo{margin:20px; box-shadow: 0px 0px 20px black;  }
         tr,td{padding:7px;}
         td{font-size:large; font-family: 5px 10px Calibri; padding-left:30px;}
         .txt{font-family:'Trebuchet MS'; font-size:large; padding:2px 4px; margin:0px 10px; width:90%; }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" Runat="Server">
     <h3 class="basliklar">Ana Kategori Düzenle</h3>
    <div class="tablo">
   <table align="center" class="tablostill">
        <tr>
            <td style="width:120px;">Kategori Adı :</td>
                <td><asp:TextBox ID="txtKategoriAdi" runat="server"></asp:TextBox></td>
           
        </tr>
 
        <tr>
            <td colspan="2" style="text-align:center; padding-top:10px;" class="auto-style8">
                <asp:ImageButton ID="ibtnGuncelle" runat="server" ImageUrl="~/resimler/yonetim/guncelle.png" ToolTip="guncelle" Width="80px" OnClick="ibtnGuncelle_Click"  />
                &nbsp;
                <asp:ImageButton ID="ibtnVazgec" runat="server" ImageUrl="~/resimler/yonetim/vazgec.png" ToolTip="vazgec" Width="80px" OnClick="ibtnVazgec_Click"  /></td>
        </tr>
      
    </table>

    </div>
</asp:Content>

