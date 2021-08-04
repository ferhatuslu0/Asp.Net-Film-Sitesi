<%@ Page Title="" Language="C#" MasterPageFile="~/yonetimP/yonetimP.master" AutoEventWireup="true" CodeFile="FilmEkle.aspx.cs" Inherits="yonetimP_FilmEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .tablostill {box-shadow: 0px 0px 20px black;
            width: 755px;
            font-family:'Trebuchet MS';font-size:medium;
            background-color:#0B82C4;
            color:white;
            padding:10px;
            margin-top:25px;
            margin-bottom:10px;
            height: 328px;
            margin-left: 21px;
        }
         .tablo{margin:20px; box-shadow: 0px 0px 20px black;  }
         tr,td{padding:7px;}
         td{font-size:large; font-family: 5px 10px Calibri; padding-left:30px;}
         .txt{font-family:'Trebuchet MS'; font-size:large; padding:2px 4px; margin:0px 10px 0px 1px; 
width:90%; }
        .auto-style1 {
            width: 313px;
        }
        .txt {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="yonetimicerik" runat="Server">
    <h3 class="basliklar">Film Ekle</h3>
    <div class="tablo">

        <table class="tablostill">
            <tr>
                <td style="width: 150px;">Film Adı :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtFilmAd" runat="server" CssClass="txt" Width="298px"></asp:TextBox>
                </td>
            </tr>
               <tr>
                <td style="width: 150px;">Film Bilgi :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtFilmBilgi" runat="server" CssClass="txt" Width="299px"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 150px;">AnaKategori Adı :</td>
                <td class="auto-style1">
                    &nbsp;<asp:DropDownList ID="ddlKategoriler" CssClass="txt" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlKategoriler_SelectedIndexChanged" Width="301px" ></asp:DropDownList>
                </td>
            </tr>
               <tr>
                <td style="width: 160px;">AltKategori Adı :</td>
                <td class="auto-style1">
                    &nbsp;<asp:DropDownList ID="ddlAltKategoriler" CssClass="txt" runat="server" Width="301px" ></asp:DropDownList>
                </td>
            </tr>
                 
             <tr>
                <td style="width: 160px;">Film Türü :</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtFilmTur" TextMode="MultiLine" runat="server" CssClass="txt" Height="22px" Width="297px" ></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td style="width: 160px;">Film Resim :</td>
                <td class="auto-style1">
                    <asp:FileUpload ID="fuFoto" CssClass="txt" runat="server" />
                </td>
            </tr>

            <tr>
                <td colspan="2" style="text-align: center; padding-top: 10px;">
                    <asp:ImageButton ID="iBtnEkle" runat="server" ImageUrl="~/resimler/yonetim/ekle.png" ToolTip="Ekle" OnClick="iBtnEkle_Click" />
                    &nbsp;
                    <asp:ImageButton ID="iBtnVazgec" runat="server" ImageUrl="~/resimler/yonetim/vazgec.png" ToolTip="Vazgeç" OnClick="iBtnVazgec_Click" />

                </td>
            </tr>
        </table>
    </div>
</asp:Content>


