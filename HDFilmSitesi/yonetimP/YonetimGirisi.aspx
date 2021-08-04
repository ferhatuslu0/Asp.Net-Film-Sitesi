<%@ Page Language="C#" AutoEventWireup="true" CodeFile="YonetimGirisi.aspx.cs" Inherits="yonetimP_YonetimGirisi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Yönetim Panel Girişi</title>
    
    <style>
        body{font-family:Arial; font-size:large;text-align:center;}
        .GirisTasiyici{width:400px; margin:10px auto;background-color:#3278d8;
                       padding:20px; border-radius:20px; line-height:2em;
                       box-shadow:0px 0px 30px #52b9d0;
        }
        .GirisSol, .GirisSag {width:50%; float:left;}
        .GirisSol { text-align: right;}
        .GirisSag {text-align:left;}
        .txt{font-family:'Trebuchet MS'; font-size:large;
             padding:2px 4px; margin:0px 10px; width:130px;}
        .btn{font-family:'Trebuchet MS'; font-size:large;
             padding:5px 15px; background-color:#268dd1;
             margin:5px; border-radius:10px; 
             cursor:pointer; color:#ffffff;}
        .btn:hover{background-color:#1463b9;color:#0a0a0a;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="GirisTasiyici">
        <br />
        <hr style="width:70%; border-color:#25d4e0; margin-top:-10px;"/>
        <h3>Yönetim Panel Girişi</h3>
        <hr style="width:70%; border-color:#25d4e0; margin-top:-10px;"/>

    <div class="GirisSol">
        Kullanıcı Adı :<br />
        Şifre :<br />

    </div>
        <div class="GirisSag">
            <asp:TextBox ID="txtKullaniciAdi" CssClass="txt" runat="server"></asp:TextBox><br />
            <asp:TextBox ID="txtSifre" CssClass="txt" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lblDurum" runat="server" Text="Kullanıcı adı ve şifre Hatalı" ForeColor="Red" Visible="false"></asp:Label> <br />

        <asp:SqlDataSource ID="girisSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BaglamaCumlesi %>" 
            ProviderName="<%$ ConnectionStrings:BaglamaCumlesi.ProviderName %>"></asp:SqlDataSource>
        <asp:Button ID="btnGiris" runat="server" Text="Giriş" CssClass="btn" OnClick="btnGiris_Click" />

    </div>
    </form>
</body>
</html>
