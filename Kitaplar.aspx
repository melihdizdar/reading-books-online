<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.master" AutoEventWireup="true" CodeFile="Kitaplar.aspx.cs" Inherits="Kitaplarim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="container"> 
            <div class="row bosluk">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                                <div class="col-md-3 bosluk2 text-center col-lg-3 col-sm-3">
                                    <asp:Image Width="200px" Height="300px" ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kitapid","~/Resimler/kitap_{0}.jpg") %>'/>
                                    <div class="card-header">
                                        <h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("kitapad") %>'></asp:Label></h5>
                                    </div>
                                    <div class="card-body">
                                        <h6><asp:Label ID="Label2" runat="server" Text='<%#Eval("kitapkonu")%>'></asp:Label></h6>
                                    </div>
                                    <div class="card-body">
                                        <h6><asp:Label ID="Label3" runat="server" Text='<%#Eval("kitapyazar")%>'></asp:Label></h6>
                                    </div>
                                    <div class="card-body">
                                        <h6><asp:Label ID="Label4" runat="server" Text='<%# String.Format( new System.Globalization.CultureInfo("tr-TR"), "{0:C}", Eval("kitapfiyat"))%>'></asp:Label></h6>
                                        <h6>Kitap satın almak için lütfen <a href="Uye/UyeKayit.aspx">kayıt</a> olunuz.</h6>
                                    </div>
                                </div>
                        </ItemTemplate>
                </asp:Repeater>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" SelectCommand="SELECT * FROM [Tbl_Kitap] WHERE ([kitapturu] = @kitapturu)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="kitapturu" QueryStringField="Kat" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

