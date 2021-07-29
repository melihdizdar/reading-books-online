<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet/YonetMaster.master" AutoEventWireup="true" CodeFile="UyeListesi.aspx.cs" Inherits="Yonet_UyeListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataKeyNames="UyeId" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:CommandField DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="UyeId" HeaderText="Üye TC Kimlik" ReadOnly="True" SortExpression="UyeId" />
                                <asp:BoundField DataField="AdSoyad" HeaderText="Üye Ad Soyad" SortExpression="AdSoyad" />
                                <asp:BoundField DataField="Dtarihi" HeaderText="Üye Doğum Tarihi" SortExpression="Dtarihi" />
                                <asp:BoundField DataField="Sifre" HeaderText="Üye Şifre" SortExpression="Sifre" />
                                <asp:BoundField DataField="Email" HeaderText="Üye E-Mail Adresi" SortExpression="Email" />
                                <asp:BoundField DataField="Bakiye" HeaderText="Üye Bakiye" SortExpression="Bakiye" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Uyeler] WHERE [UyeId] = @UyeId" InsertCommand="INSERT INTO [Tbl_Uyeler] ([UyeId], [AdSoyad], [Dtarihi], [Sifre], [Email], [Bakiye]) VALUES (@UyeId, @AdSoyad, @Dtarihi, @Sifre, @Email, @Bakiye)" SelectCommand="SELECT * FROM [Tbl_Uyeler]" UpdateCommand="UPDATE [Tbl_Uyeler] SET [AdSoyad] = @AdSoyad, [Dtarihi] = @Dtarihi, [Sifre] = @Sifre, [Email] = @Email, [Bakiye] = @Bakiye WHERE [UyeId] = @UyeId">
                            <DeleteParameters>
                                <asp:Parameter Name="UyeId" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UyeId" Type="String" />
                                <asp:Parameter Name="AdSoyad" Type="String" />
                                <asp:Parameter Name="Dtarihi" Type="DateTime" />
                                <asp:Parameter Name="Sifre" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Bakiye" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="AdSoyad" Type="String" />
                                <asp:Parameter Name="Dtarihi" Type="DateTime" />
                                <asp:Parameter Name="Sifre" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Bakiye" Type="Decimal" />
                                <asp:Parameter Name="UyeId" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <asp:FormView ID="FormView1" runat="server" DataKeyNames="UyeId" DataSourceID="SqlDataSource2" DefaultMode="Insert">
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
                                Bakiye:
                                <asp:TextBox ID="BakiyeTextBox" runat="server" Text='<%# Bind("Bakiye") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Üye Tc Kimlik:
                                <asp:TextBox ID="UyeIdTextBox" runat="server" CssClass="form-control" Text='<%# Bind("UyeId") %>' />
                                <br />
                                Üye Adı Soyadı:
                                <asp:TextBox ID="AdSoyadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AdSoyad") %>' />
                                <br />
                                Üye Doğum Tarihi:
                                <asp:TextBox ID="DtarihiTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Dtarihi") %>' />
                                <br />
                                Üye Şifre:<br />
                                <asp:TextBox ID="SifreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Sifre") %>' />
                                <br />
                                Üye E-Mail:
                                <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Email") %>' />
                                <br />
                                Üye Bakiye:
                                <asp:TextBox ID="BakiyeTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Bakiye") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Ekle" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel" />
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
                                Bakiye:
                                <asp:Label ID="BakiyeLabel" runat="server" Text='<%# Bind("Bakiye") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Uyeler] WHERE [UyeId] = @UyeId" InsertCommand="INSERT INTO [Tbl_Uyeler] ([UyeId], [AdSoyad], [Dtarihi], [Sifre], [Email], [Bakiye]) VALUES (@UyeId, @AdSoyad, @Dtarihi, @Sifre, @Email, @Bakiye)" SelectCommand="SELECT * FROM [Tbl_Uyeler]" UpdateCommand="UPDATE [Tbl_Uyeler] SET [AdSoyad] = @AdSoyad, [Dtarihi] = @Dtarihi, [Sifre] = @Sifre, [Email] = @Email, [Bakiye] = @Bakiye WHERE [UyeId] = @UyeId">
                            <DeleteParameters>
                                <asp:Parameter Name="UyeId" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="UyeId" Type="String" />
                                <asp:Parameter Name="AdSoyad" Type="String" />
                                <asp:Parameter Name="Dtarihi" Type="DateTime" />
                                <asp:Parameter Name="Sifre" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Bakiye" Type="Decimal" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="AdSoyad" Type="String" />
                                <asp:Parameter Name="Dtarihi" Type="DateTime" />
                                <asp:Parameter Name="Sifre" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Bakiye" Type="Decimal" />
                                <asp:Parameter Name="UyeId" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <br />

                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataKeyNames="admintc" DataSourceID="SqlDataSource3">
                            <Columns>
                                <asp:CommandField DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:BoundField DataField="admintc" HeaderText="Admin TC Kimlik" ReadOnly="True" SortExpression="admintc" />
                                <asp:BoundField DataField="adminadsoyad" HeaderText="Admin Ad Soyad" SortExpression="adminadsoyad" />
                                <asp:BoundField DataField="adminemail" HeaderText="Admin E-Mail" SortExpression="adminemail" />
                                <asp:BoundField DataField="adminsifre" HeaderText="Admin Şifre" SortExpression="adminsifre" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Admin] WHERE [admintc] = @admintc" InsertCommand="INSERT INTO [Tbl_Admin] ([admintc], [adminadsoyad], [adminemail], [adminsifre]) VALUES (@admintc, @adminadsoyad, @adminemail, @adminsifre)" SelectCommand="SELECT * FROM [Tbl_Admin]" UpdateCommand="UPDATE [Tbl_Admin] SET [adminadsoyad] = @adminadsoyad, [adminemail] = @adminemail, [adminsifre] = @adminsifre WHERE [admintc] = @admintc">
                            <DeleteParameters>
                                <asp:Parameter Name="admintc" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="admintc" Type="Int32" />
                                <asp:Parameter Name="adminadsoyad" Type="String" />
                                <asp:Parameter Name="adminemail" Type="String" />
                                <asp:Parameter Name="adminsifre" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="adminadsoyad" Type="String" />
                                <asp:Parameter Name="adminemail" Type="String" />
                                <asp:Parameter Name="adminsifre" Type="String" />
                                <asp:Parameter Name="admintc" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <asp:FormView ID="FormView2" runat="server" DataKeyNames="admintc" DataSourceID="SqlDataSource4" DefaultMode="Insert">
                            <EditItemTemplate>
                                admintc:
                                <asp:Label ID="admintcLabel1" runat="server" Text='<%# Eval("admintc") %>' />
                                <br />
                                adminadsoyad:
                                <asp:TextBox ID="adminadsoyadTextBox" runat="server" Text='<%# Bind("adminadsoyad") %>' />
                                <br />
                                adminemail:
                                <asp:TextBox ID="adminemailTextBox" runat="server" Text='<%# Bind("adminemail") %>' />
                                <br />
                                adminsifre:
                                <asp:TextBox ID="adminsifreTextBox" runat="server" Text='<%# Bind("adminsifre") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                Admin TC Kimlik:
                                <asp:TextBox ID="admintcTextBox" runat="server" CssClass="form-control" Text='<%# Bind("admintc") %>' />
                                <br />
                                Admin Adı Soyadı:
                                <asp:TextBox ID="adminadsoyadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminadsoyad") %>' />
                                <br />
                                Admin E-Mail:
                                <asp:TextBox ID="adminemailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminemail") %>' />
                                <br />
                                Admin Şifre:
                                <asp:TextBox ID="adminsifreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminsifre") %>' />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Ekle" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                admintc:
                                <asp:Label ID="admintcLabel" runat="server" Text='<%# Eval("admintc") %>' />
                                <br />
                                adminadsoyad:
                                <asp:Label ID="adminadsoyadLabel" runat="server" Text='<%# Bind("adminadsoyad") %>' />
                                <br />
                                adminemail:
                                <asp:Label ID="adminemailLabel" runat="server" Text='<%# Bind("adminemail") %>' />
                                <br />
                                adminsifre:
                                <asp:Label ID="adminsifreLabel" runat="server" Text='<%# Bind("adminsifre") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                            </ItemTemplate>
                        </asp:FormView>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Admin] WHERE [admintc] = @admintc" InsertCommand="INSERT INTO [Tbl_Admin] ([admintc], [adminadsoyad], [adminemail], [adminsifre]) VALUES (@admintc, @adminadsoyad, @adminemail, @adminsifre)" SelectCommand="SELECT * FROM [Tbl_Admin]" UpdateCommand="UPDATE [Tbl_Admin] SET [adminadsoyad] = @adminadsoyad, [adminemail] = @adminemail, [adminsifre] = @adminsifre WHERE [admintc] = @admintc">
                            <DeleteParameters>
                                <asp:Parameter Name="admintc" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="admintc" Type="Int32" />
                                <asp:Parameter Name="adminadsoyad" Type="String" />
                                <asp:Parameter Name="adminemail" Type="String" />
                                <asp:Parameter Name="adminsifre" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="adminadsoyad" Type="String" />
                                <asp:Parameter Name="adminemail" Type="String" />
                                <asp:Parameter Name="adminsifre" Type="String" />
                                <asp:Parameter Name="admintc" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>

                        <br />

                    </div>
                </div>
            </div>
        </div>
</asp:Content>

