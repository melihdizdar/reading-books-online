<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet/YonetMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Yonet_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid bosluk2">
        <div class="container">
            <div class="row">
                <div class="col-md-4">

                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="admintc" DataSourceID="SqlDataSource2" DefaultMode="Edit">
                        <EditItemTemplate>
                            TC Kimlik:
                            <asp:Label ID="admintcLabel1" runat="server" Text='<%# Eval("admintc") %>' />
                            <br />
                            Ad Soyad:
                            <asp:TextBox ID="adminadsoyadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminadsoyad") %>' Width="300px" />
                            <br />
                            E-Mail:
                            <asp:TextBox ID="adminemailTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminemail") %>' Width="300px" />
                            <br />
                            Şifre:
                            <asp:TextBox ID="adminsifreTextBox" runat="server" CssClass="form-control" Text='<%# Bind("adminsifre") %>' Width="300px" />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" CssClass="btn btn-primary" Text="Güncelle" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="İptal" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            admintc:
                            <asp:TextBox ID="admintcTextBox" runat="server" Text='<%# Bind("admintc") %>' />
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
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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

                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" SelectCommand="SELECT * FROM [Tbl_Admin] WHERE ([admintc] = @admintc)">
                        <SelectParameters>
                            <asp:SessionParameter Name="admintc" SessionField="AdminTc" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />

                </div>
                <div class="col-md-8">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataKeyNames="kategoriid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:CommandField CancelText="İptal" EditText="Düzenle" ShowEditButton="True" />
                            <asp:BoundField DataField="kategoriid" HeaderText="Kategori ID" InsertVisible="False" ReadOnly="True" SortExpression="kategoriid" />
                            <asp:BoundField DataField="kitapturu" HeaderText="Kitap Türü" SortExpression="kitapturu" />
                            <asp:BoundField DataField="kitapturuaciklama" HeaderText="Kitap Türü Açıklama" SortExpression="kitapturuaciklama" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Kategori] WHERE [kategoriid] = @kategoriid" InsertCommand="INSERT INTO [Tbl_Kategori] ([kitapturu], [kitapturuaciklama]) VALUES (@kitapturu, @kitapturuaciklama)" SelectCommand="SELECT * FROM [Tbl_Kategori]" UpdateCommand="UPDATE [Tbl_Kategori] SET [kitapturu] = @kitapturu, [kitapturuaciklama] = @kitapturuaciklama WHERE [kategoriid] = @kategoriid">
                        <DeleteParameters>
                            <asp:Parameter Name="kategoriid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="kitapturu" Type="String" />
                            <asp:Parameter Name="kitapturuaciklama" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="kitapturu" Type="String" />
                            <asp:Parameter Name="kitapturuaciklama" Type="String" />
                            <asp:Parameter Name="kategoriid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:FormView ID="FormView2" runat="server" DataKeyNames="kategoriid" DataSourceID="SqlDataSource3" DefaultMode="Insert" HorizontalAlign="Center">
                        <EditItemTemplate>
                            kategoriid:
                            <asp:Label ID="kategoriidLabel1" runat="server" Text='<%# Eval("kategoriid") %>' />
                            <br />
                            kitapturu:
                            <asp:TextBox ID="kitapturuTextBox" runat="server" Text='<%# Bind("kitapturu") %>' />
                            <br />
                            kitapturuaciklama:
                            <asp:TextBox ID="kitapturuaciklamaTextBox" runat="server" Text='<%# Bind("kitapturuaciklama") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            Kitap Türü:
                            <asp:TextBox ID="kitapturuTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapturu") %>' Width="500px" />
                            <br />
                            Kitap Türü Açıklama:
                            <asp:TextBox ID="kitapturuaciklamaTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapturuaciklama") %>' Width="500px" TextMode="MultiLine" />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Ekle" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="İptal" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            kategoriid:
                            <asp:Label ID="kategoriidLabel" runat="server" Text='<%# Eval("kategoriid") %>' />
                            <br />
                            kitapturu:
                            <asp:Label ID="kitapturuLabel" runat="server" Text='<%# Bind("kitapturu") %>' />
                            <br />
                            kitapturuaciklama:
                            <asp:Label ID="kitapturuaciklamaLabel" runat="server" Text='<%# Bind("kitapturuaciklama") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Kategori] WHERE [kategoriid] = @kategoriid" InsertCommand="INSERT INTO [Tbl_Kategori] ([kitapturu], [kitapturuaciklama]) VALUES (@kitapturu, @kitapturuaciklama)" SelectCommand="SELECT * FROM [Tbl_Kategori]" UpdateCommand="UPDATE [Tbl_Kategori] SET [kitapturu] = @kitapturu, [kitapturuaciklama] = @kitapturuaciklama WHERE [kategoriid] = @kategoriid">
                        <DeleteParameters>
                            <asp:Parameter Name="kategoriid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="kitapturu" Type="String" />
                            <asp:Parameter Name="kitapturuaciklama" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="kitapturu" Type="String" />
                            <asp:Parameter Name="kitapturuaciklama" Type="String" />
                            <asp:Parameter Name="kategoriid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <br />

                </div>
            </div>
        </div>
    </div>
</asp:Content>

