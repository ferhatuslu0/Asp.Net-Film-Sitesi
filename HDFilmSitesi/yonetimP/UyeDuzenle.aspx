<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="UyeDuzenle.aspx.cs" Inherits="yonetimP_UyeDuzenle" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="Yonetimicerik" Runat="Server">
    <h3 class="yonetimbasliklar">ÜYE GÜNCELLE</h3>
    <div class="tablo">
   <table align="center" class="tablostill">
        <tr>
            <td style="width:90px;">Üye Adı :</td>
                <td><asp:TextBox ID="txtUyeAdi" runat="server" Height="25px"></asp:TextBox></td>
           
        </tr>
        <tr>
            <td style="width:90px;">Üye Şifre:</td>
              <td><asp:TextBox ID="txtUyeSifre" runat="server" Height="25px"></asp:TextBox></td>
            
        </tr>
        <tr>
            <td style="width:90px;">Yönetici:</td>
               <td> <asp:TextBox ID="txtYonetici" runat="server" Height="25px"></asp:TextBox></td>

        </tr>
        <tr>
            <td colspan="2" style="text-align:center; padding-top:10px;" >
                <asp:ImageButton ID="ibtnGuncelle" runat="server" ImageUrl="~/resimler/yonetim/guncelle.png" ToolTip="Güncelle"  OnClick="ibtnGuncelle_Click" />
                &nbsp;
                <asp:ImageButton ID="ibtnVazgec" runat="server" ImageUrl="~/resimler/yonetim/vazgec.png" ToolTip="vazgec"  OnClick="ibtnVazgec_Click" /></td>
        </tr>
      
    </table>

    </div>
</asp:Content>

