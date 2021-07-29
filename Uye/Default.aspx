<%@ Page Title="" Language="C#" MasterPageFile="~/Uye/UyeMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Uye_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-8 bosluk2">

                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="UyeId" DataSourceID="SqlDataSource1" DefaultMode="Edit">
                        <EditItemTemplate>
                            Uye TC Kimlik :
                            <asp:Label ID="UyeIdLabel1" runat="server" Text='<%# Eval("UyeId") %>' />
                            <br />
                            Ad Soyad:
                            <asp:TextBox ID="AdSoyadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AdSoyad") %>' />
                            <br />
                            Doğum Tarihi:
                            <asp:TextBox ID="DtarihiTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Dtarihi") %>' />
                            <br />
                            E-Mail:
                            <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
                            <br />
                            Şifre:
                            <asp:TextBox ID="SifreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Sifre") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary" Text="Güncelle" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="İptal" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            UyeId:
                            <asp:TextBox ID="UyeIdTextBox" runat="server" Text='<%# Bind("UyeId") %>' />
                            <br />
                            AdSoyad:
                            <asp:TextBox ID="AdSoyadTextBox" runat="server" Text='<%# Bind("AdSoyad") %>' />
                            <br />
                            Dtarihi:
                            <asp:TextBox ID="DtarihiTextBox" runat="server" Text='<%# Bind("Dtarihi") %>' />
                            <br />
                            Email:
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            Sifre:
                            <asp:TextBox ID="SifreTextBox" runat="server" Text='<%# Bind("Sifre") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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
                            Email:
                            <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                            <br />
                            Sifre:
                            <asp:Label ID="SifreLabel" runat="server" Text='<%# Bind("Sifre") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Uyeler] WHERE [UyeId] = @UyeId" InsertCommand="INSERT INTO [Tbl_Uyeler] ([UyeId], [AdSoyad], [Dtarihi], [Email], [Sifre]) VALUES (@UyeId, @AdSoyad, @Dtarihi, @Email, @Sifre)" SelectCommand="SELECT [UyeId], [AdSoyad], [Dtarihi], [Email], [Sifre] FROM [Tbl_Uyeler] WHERE ([UyeId] LIKE '%' + @UyeId + '%')" UpdateCommand="UPDATE [Tbl_Uyeler] SET [AdSoyad] = @AdSoyad, [Dtarihi] = @Dtarihi, [Email] = @Email, [Sifre] = @Sifre WHERE [UyeId] = @UyeId">
                        <DeleteParameters>
                            <asp:Parameter Name="UyeId" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="UyeId" Type="String" />
                            <asp:Parameter Name="AdSoyad" Type="String" />
                            <asp:Parameter Name="Dtarihi" Type="DateTime" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Sifre" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter Name="UyeId" SessionField="OturumTc" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AdSoyad" Type="String" />
                            <asp:Parameter Name="Dtarihi" Type="DateTime" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Sifre" Type="String" />
                            <asp:Parameter Name="UyeId" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
                <div class="col-md-4 bosluk2">

                    <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            Bakiye:
                            <asp:TextBox ID="BakiyeTextBox" runat="server" Text='<%# Bind("Bakiye") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Bakiye:
                            <asp:TextBox ID="BakiyeTextBox" runat="server" Text='<%# Bind("Bakiye") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            Bakiye:
                            <asp:Label ID="BakiyeLabel" runat="server" Text='<%# Bind("Bakiye") %>' />
                            &nbsp;TL<br />

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" SelectCommand="SELECT [Bakiye] FROM [Tbl_Uyeler] WHERE ([UyeId] = @UyeId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="UyeId" SessionField="OturumTc" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    Bakiye Yükle :
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" SelectCommand="SELECT [GirilenBakiye] FROM [Tbl_Kredi] WHERE ([GirilenBakiye] = @GirilenBakiye)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox1" Name="GirilenBakiye" PropertyName="Text" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Yükle" OnClick="Button1_Click1" />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

