<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster2.master" AutoEventWireup="true" CodeFile="UKitaplar.aspx.cs" Inherits="UKitaplar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="container"> 
            <asp:Label ID="mylabel" CssClass="text-danger m-auto mt-2 text-center" runat="server" DataSourceID="SqlDataSource1">Yeterli Bakiyeniz Bulunmamaktadır. Lütfen bakiye yüklemesi yapınız.</asp:Label>
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
                                        <h6><asp:Label ID="Label4" runat="server" Text='<%#String.Format( new System.Globalization.CultureInfo("tr-TR"), "{0:C}",Eval("kitapfiyat"))%>'></asp:Label><asp:LinkButton ID="LinkButton1" runat="server" OnCommand="LinkButton1_Click" CssClass="btn btn-link float-right" CommandArgument='<%#Eval("kitapid")%>'>+Satın Al</asp:LinkButton>
                                        </h6>
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

