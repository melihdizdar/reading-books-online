<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid bosluk2">
            <div class="container">
                <div class="row">
                    <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <div class="col-md-4 bosluk2 col-lg-4 col-sm-4">
                                    <asp:Image ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kategoriid","~/Resimler/katagori_{0}.jpg") %>'/>
                                    <div class="card-header">
                                        <h5><asp:Label ID="Label1" runat="server" Text='<%# Eval("kitapturu") %>'></asp:Label></h5>
                                    </div>
                                    <div class="card-body">
                                        <h6><asp:Label ID="Label2" runat="server" Text='<%#Eval("kitapturuaciklama")%>'></asp:Label></h6>
                                    </div>
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-link float-right" NavigateUrl='<%# Eval("kitapturu","~/Kitaplar.aspx?kat={0}") %>'>+Detay</asp:HyperLink>
                                </div>
                            </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
</asp:Content>

