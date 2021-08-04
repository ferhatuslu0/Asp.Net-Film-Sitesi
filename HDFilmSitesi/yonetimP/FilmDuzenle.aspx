<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="FilmDuzenle.aspx.cs" Inherits="yonetimP_FilmDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .tabloStill {
           box-shadow: 0px 0px 20px black;
            width: 762px;
            font-family:'Trebuchet MS';font-size:medium;
            background-color:#0B82C4;
            color:white;
            padding:10px;
            margin-top:10px;
            margin-bottom:10px;
            margin-left: 19px;
        }

        .tablo{margin:20px; box-shadow: 0px 0px 20px black;  }
         tr,td{padding:7px;}
         td{font-size:large; font-family: 5px 10px Calibri; padding-left:30px;}
         .txt{font-family:'Trebuchet MS'; font-size:large; padding:2px 4px; margin:0px 10px 0px 1px; }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" runat="Server">
    <h3 class="basliklar">Film Düzenle</h3>
    <div class="tablo">

        <table class="tabloStill">
            <tr>
                <td style="width: 150px;">Film Adı :</td>
                <td>
                    <asp:TextBox ID="txtfilmAd" runat="server" CssClass="txt" Height="25px" Width="385px"></asp:TextBox>
                </td>
                <td rowspan="5" style="width: 100px;" >
                    Film Resim :<br />
                    <asp:Image ID="imgFilmResim" Width="100" runat="server" />
                </td>
            </tr>
               <tr>
                <td style="width: 150px;">Film Bilgi :</td>
                <td>
                    <asp:TextBox ID="txtfilmBilgi" runat="server" CssClass="txt" Height="25px" Width="385px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 150px;">AnaKategori Adı :</td>
                <td>
                    <asp:DropDownList ID="ddlKategoriler" CssClass="txt" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlKategoriler_SelectedIndexChanged" Height="25px" Width="393px" ></asp:DropDownList>
                </td>
            </tr>
               <tr>
                <td style="width: 150px;">AltKategori Adı :</td>
                <td>
                    <asp:DropDownList ID="ddlAltKategoriler" CssClass="txt" runat="server" Height="27px" Width="395px"></asp:DropDownList>
                </td>
            </tr>
                  
             <tr>
                <td style="width: 150px;">Film Türü :</td>
                <td colspan="2">
                    <asp:TextBox ID="txtfilmTuru" TextMode="MultiLine" runat="server" CssClass="txt"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 150px;">Film Resim </td>
                <td colspan="2">
                    <asp:FileUpload ID="fuFoto" CssClass="txt" runat="server" Height="40px" />
                </td>
            </tr>

            <tr>
                <td colspan="3" style="text-align: center; padding-top: 10px;">
                    <asp:ImageButton ID="iBtnGuncelle" runat="server" ImageUrl="~/resimler/yonetim/guncelle.png" ToolTip="Güncelle" OnClick="iBtnGuncelle_Click" />
                    &nbsp;
                    <asp:ImageButton ID="iBtnVazgec" runat="server" ImageUrl="~/resimler/yonetim/vazgec.png" ToolTip="Vazgeç" OnClick="iBtnVazgec_Click" />

                </td>
            </tr>
        </table>
    </div>
</asp:Content>

