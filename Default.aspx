<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container bosluk">
            <div class="row">
               <div class="col-md-4">
                  <div class="card" style="width: 20rem;">
  <div class="card-body">
    <h5 class="card-title text-left">En Çok Satanlar</h5>
    <div class="row">
         <asp:Repeater ID="Repeater3" runat="server">
                        <ItemTemplate>
                        <div class="col-md-6">
                            <asp:Image Width="150px" Height="200px" ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kitapid","~/Resimler/kitap_{0}.jpg") %>'/>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>
     </div>
  </div>
</div>
               </div>
               <div class="col-md-4">
                  <div class="card" style="width: 20rem;">
  <div class="card-body">
    <h5 class="card-title text-left">Yeni Eklenen Kitaplar</h5>
    <div class="row">
         <asp:Repeater ID="Repeater4" runat="server">
                        <ItemTemplate>
                        <div class="col-md-6">
                            <asp:Image Width="150px" Height="200px" ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kitapid","~/Resimler/kitap_{0}.jpg") %>'/>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>
     </div>
  </div>
</div>
               </div>
                  <div class="col-md-4">
                  <div class="card" style="width: 20rem;">
  <div class="card-body">
    <h5 class="card-title text-left">İlginizi Çekebilir</h5>
      <div class="row">
         <asp:Repeater ID="Repeater5" runat="server">
                        <ItemTemplate>
                        <div class="col-md-6">
                            <asp:Image Width="150px" Height="200px" ID="Image1" runat="server" CssClass="img-thumbnail card-img-top"  ImageUrl='<%# Eval("kitapid","~/Resimler/kitap_{0}.jpg") %>'/>
                        </div>
                        </ItemTemplate>
                </asp:Repeater>
     </div>

  </div>
</div>
               </div>
            </div>
        </div>
</asp:Content>

