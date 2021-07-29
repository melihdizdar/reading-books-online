<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UyeKayit.aspx.cs" Inherits="Uye_UyeGiris" %>

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
                    <h5>Üye Paneli</h5>
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
                        <a class="nav-link active" data-toggle="tab" href="#kayit">Kayıt</a>
                    </li>
                </ul>
                
                <!-- Tab paneller-->
                <div class="tab-content">

                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UyeId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
                        <EditItemTemplate>
                            UyeId:
                            <asp:Label ID="UyeIdLabel1" runat="server" Text='<%# Eval("UyeId") %>' />
                            <br />
                            AdSoyad:
                            <asp:TextBox ID="AdSoyadTextBox" runat="server" Text='<%# Bind("AdSoyad") %>' />
                            <br />
                            Dtarihi:
                            <asp:TextBox ID="DtarihiTextBox" runat="server" Text='<%# Bind("Dtarihi") %>' />
                            <br />
                            Sifre:
                            <asp:TextBox ID="SifreTextBox" runat="server" Text='<%# Bind("Sifre") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            TC Kimlik:
                            <asp:TextBox ID="UyeIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("UyeId") %>' />
                            <br />
                            Adı Soyadı:
                            <asp:TextBox ID="AdSoyadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AdSoyad") %>' />
                            <br />
                            Doğum Tarihi:
                            <asp:TextBox ID="DtarihiTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Dtarihi") %>' />
                            <br />
                            Şifre:
                            <asp:TextBox ID="SifreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Sifre") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Ekle" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="İptal" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            UyeId:
                            <asp:Label ID="UyeIdLabel" runat="server" Text='<%# Eval("UyeId") %>' />
                            <br />
                            AdSoyad:
                            <asp:Label ID="AdSoyadLabel" runat="server" Text='<%# Bind("AdSoyad") %>' />
                            <br />
                            Dtarihi:
                            <asp:Label ID="DtarihiLabel" runat="server" Text='<%# Bind("Dtarihi") %>' />
                            <br />
                            Sifre:
                            <asp:Label ID="SifreLabel" runat="server" Text='<%# Bind("Sifre") %>' />
                            <br />
                            Email:
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Uyeler] WHERE [UyeId] = @UyeId" InsertCommand="INSERT INTO [Tbl_Uyeler] ([UyeId], [AdSoyad], [Dtarihi], [Sifre], [Email]) VALUES (@UyeId, @AdSoyad, @Dtarihi, @Sifre, @Email)" SelectCommand="SELECT [UyeId], [AdSoyad], [Dtarihi], [Sifre], [Email] FROM [Tbl_Uyeler]" UpdateCommand="UPDATE [Tbl_Uyeler] SET [AdSoyad] = @AdSoyad, [Dtarihi] = @Dtarihi, [Sifre] = @Sifre, [Email] = @Email WHERE [UyeId] = @UyeId">
                        <DeleteParameters>
                            <asp:Parameter Name="UyeId" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="UyeId" Type="String" />
                            <asp:Parameter Name="AdSoyad" Type="String" />
                            <asp:Parameter Name="Dtarihi" Type="DateTime" />
                            <asp:Parameter Name="Sifre" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AdSoyad" Type="String" />
                            <asp:Parameter Name="Dtarihi" Type="DateTime" />
                            <asp:Parameter Name="Sifre" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="UyeId" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>

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
