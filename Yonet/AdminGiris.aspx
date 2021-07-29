<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminGiris.aspx.cs" Inherits="Yonet_AdminGiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bs4/bootstrap.min.css" rel="stylesheet" />
    <script src="../bs4/jquery.min.js"></script>
    <script src="../bs4/bootstrap.min.js"></script>
    <style>
        .bosluk{
            padding-top : 10px;
            padding-bottom : 10px;
        }
        .bosluk2{
            padding-top : 20px;
            padding-bottom : 20px;
        }
        .topcolor{
            background-color:#001265;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid bg-white text-center bosluk">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-primary">
                    <h3>Online Kitap Okuma</h3>
                    <h5>----> Yönetici Girişi <----</h5>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid bg-primary bosluk">
            <div class="container">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6 bg-light">
                <!-- Tab Linkler -->
                <ul class="nav nav-tabs">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#giris">Giriş</a>
                    </li>
                </ul>
                
                <!-- Tab paneller-->
                <div class="tab-content">
                    <div id="giris" class="container tab-pane active">
                        <p>Tc Kimlik No:<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                        </p>
                        <p>Şifre:<asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        </p>
                        <p>
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Giriş" />
                        </p>
                        <p>
                            <asp:Label ID="Label2" runat="server" CssClass="text-danger"></asp:Label>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
    <div>
        <div class="container-fluid bg-primary ">
            <div class="container">
                <div class="row bosluk">
                        <div class="col-md-12 text-center text-light">
                            <h6>Bu site Melih Dizdar tarafından kodlanmıştır. Tüm hakları saklıdır © 2019</h6>
                        </div>
                </div>
             </div>
         </div>
    </div>
    </form>
</body>
</html>