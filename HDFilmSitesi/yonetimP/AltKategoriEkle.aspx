<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="AltKategoriEkle.aspx.cs" Inherits="yonetimP_AltKategoriEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .tablostill {
            box-shadow: 0px 0px 20px black;
            width: 400px;
            font-family:'Trebuchet MS';font-size:medium;
            background-color:#0B82C4;
            color:white;
            padding:10px;
            margin-top:10px;
            margin-bottom:10px;
            
            
        }
        .tablo{margin:20px;}
        tr,td{padding:5px;}
        .txt{font-family:'Trebuchet MS'; font-size:large; padding:2px 4px; margin:0px 10px; width:90%;}
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" Runat="Server">
    <h3 class="basliklar">Alt Kategori Ekle</h3>
    <div class="tablo">
   <table align="center" class="tablostill">
        <tr>
            <td style="width:150px;">Alt Kategori Adı :</td>
                <td><asp:TextBox ID="txtAltKategoriAdi" runat="server" CssClass="txt"></asp:TextBox></td>
           
        </tr>
        <tr>
            <td style="width:150px;">Kategori Adı:</td>
              <td><asp:DropDownList ID="ddlKategoriler" runat="server" CssClass="txt"></asp:DropDownList></td>
            
        </tr>
        
        <tr>
            <td colspan="2" style="text-align:center; padding-top:10px;" class="auto-style8">
                <asp:ImageButton ID="ibtnEkle" runat="server" ImageUrl="~/resimler/yonetim/ekle.png" ToolTip="ekle"  OnClick="ibtnEkle_Click" />
                &nbsp;
                <asp:ImageButton ID="ibtnVazgec" runat="server" ImageUrl="~/resimler/yonetim/vazgec.png" ToolTip="vazgec" OnClick="ibtnVazgec_Click" /></td>
        </tr>
      
    </table>

    </div>
</asp:Content>

