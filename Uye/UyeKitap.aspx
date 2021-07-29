<%@ Page Title="" Language="C#" MasterPageFile="~/Uye/UyeMaster.master" AutoEventWireup="true" CodeFile="UyeKitap.aspx.cs" Inherits="Uye_UyeKitap" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="container"> 
            <div class="row bosluk">
                <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                                <div class="col-md-3 bosluk2 col-lg-3 col-sm-3 col-xl-3">
                                    <asp:Image Width="150px" Height="250px" ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kitapid","~/Resimler/kitap_{0}.jpg") %>'/>
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
                                        <h6><asp:Label ID="Label4" runat="server" Text='<%#Eval("kitapfiyat")%>'></asp:Label></h6>
                                    </div>
                                    <h6 class="text-right text-primary mb-3"><a href='<%# Eval("kitapid","/Pdfler/kitap_{0}.pdf") %>'>PDF'e Git</a></h6>
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

