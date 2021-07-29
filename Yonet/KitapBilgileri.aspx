<%@ Page Title="" Language="C#" MasterPageFile="~/Yonet/YonetMaster.master" AutoEventWireup="true" CodeFile="KitapBilgileri.aspx.cs" Inherits="Yonet_KitapBilgiler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="table" DataKeyNames="kitapid" DataSourceID="SqlDataSource1" Width="1200px" HorizontalAlign="Center">
    <Columns>
        <asp:CommandField DeleteText="Sil" EditText="Düzenle" ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="kitapid" HeaderText="Kitap ID" InsertVisible="False" ReadOnly="True" SortExpression="kitapid" />
        <asp:BoundField DataField="kitapresim" HeaderText="Kitap URL" SortExpression="kitapresim" />
        <asp:BoundField DataField="kitapad" HeaderText="Kitap Adı" SortExpression="kitapad" />
        <asp:BoundField DataField="kitapturu" HeaderText="Kitap Türü" SortExpression="kitapturu" />
        <asp:BoundField DataField="kitapkonu" HeaderText="Kitap Konu" SortExpression="kitapkonu" />
        <asp:BoundField DataField="kitapyazar" HeaderText="Kitap Yazar" SortExpression="kitapyazar" />
        <asp:BoundField DataField="kitapfiyat" HeaderText="Kitap Fiyat" SortExpression="kitapfiyat" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Kitap] WHERE [kitapid] = @kitapid" InsertCommand="INSERT INTO [Tbl_Kitap] ([kitapyazar], [kitapkonu], [kitapturu], [kitapad], [kitapresim], [kitapfiyat]) VALUES (@kitapyazar, @kitapkonu, @kitapturu, @kitapad, @kitapresim, @kitapfiyat)" SelectCommand="SELECT [kitapyazar], [kitapkonu], [kitapturu], [kitapad], [kitapresim], [kitapid], [kitapfiyat] FROM [Tbl_Kitap]" UpdateCommand="UPDATE [Tbl_Kitap] SET [kitapyazar] = @kitapyazar, [kitapkonu] = @kitapkonu, [kitapturu] = @kitapturu, [kitapad] = @kitapad, [kitapresim] = @kitapresim, [kitapfiyat] = @kitapfiyat WHERE [kitapid] = @kitapid">
    <DeleteParameters>
        <asp:Parameter Name="kitapid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="kitapyazar" Type="String" />
        <asp:Parameter Name="kitapkonu" Type="String" />
        <asp:Parameter Name="kitapturu" Type="String" />
        <asp:Parameter Name="kitapad" Type="String" />
        <asp:Parameter Name="kitapresim" Type="String" />
        <asp:Parameter Name="kitapfiyat" Type="Decimal" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="kitapyazar" Type="String" />
        <asp:Parameter Name="kitapkonu" Type="String" />
        <asp:Parameter Name="kitapturu" Type="String" />
        <asp:Parameter Name="kitapad" Type="String" />
        <asp:Parameter Name="kitapresim" Type="String" />
        <asp:Parameter Name="kitapfiyat" Type="Decimal" />
        <asp:Parameter Name="kitapid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
            <h6 class="text-center">Kitap Ekle</h6>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="kitapid" DataSourceID="SqlDataSource3" DefaultMode="Insert" HorizontalAlign="Center">
                <EditItemTemplate>
                    kitapresim:
                    <asp:TextBox ID="kitapresimTextBox" runat="server" Text='<%# Bind("kitapresim") %>' />
                    <br />
                    kitapad:
                    <asp:TextBox ID="kitapadTextBox" runat="server" Text='<%# Bind("kitapad") %>' />
                    <br />
                    kitapturu:
                    <asp:TextBox ID="kitapturuTextBox" runat="server" Text='<%# Bind("kitapturu") %>' />
                    <br />
                    kitapkonu:
                    <asp:TextBox ID="kitapkonuTextBox" runat="server" Text='<%# Bind("kitapkonu") %>' />
                    <br />
                    kitapyazar:
                    <asp:TextBox ID="kitapyazarTextBox" runat="server" Text='<%# Bind("kitapyazar") %>' />
                    <br />
                    kitapfiyat:
                    <asp:TextBox ID="kitapfiyatTextBox" runat="server" Text='<%# Bind("kitapfiyat") %>' />
                    <br />
                    kitapid:
                    <asp:Label ID="kitapidLabel1" runat="server" Text='<%# Eval("kitapid") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Kitap URL(Kitap_?.jpg):
                    <asp:TextBox ID="kitapresimTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapresim") %>' />
                    <br />
                    Kitap Adı:
                    <asp:TextBox ID="kitapadTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapad") %>' />
                    <br />
                    Kitap Türü:
                    <asp:TextBox ID="kitapturuTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapturu") %>' />
                    <br />
                    Kitap Konu:
                    <asp:TextBox ID="kitapkonuTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapkonu") %>' TextMode="MultiLine" />
                    <br />
                    Kitap Yazar:
                    <asp:TextBox ID="kitapyazarTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapyazar") %>' />
                    <br />
                    Kitap Fiyat:
                    <asp:TextBox ID="kitapfiyatTextBox" runat="server" CssClass="form-control" Text='<%# Bind("kitapfiyat") %>' />
                    <br />
                    &nbsp;<asp:TextBox ID="kitapidTextBox" runat="server" Enabled="False" Text='<%# Bind("kitapid") %>' Visible="False" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="btn btn-danger" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    kitapresim:
                    <asp:Label ID="kitapresimLabel" runat="server" Text='<%# Bind("kitapresim") %>' />
                    <br />
                    kitapad:
                    <asp:Label ID="kitapadLabel" runat="server" Text='<%# Bind("kitapad") %>' />
                    <br />
                    kitapturu:
                    <asp:Label ID="kitapturuLabel" runat="server" Text='<%# Bind("kitapturu") %>' />
                    <br />
                    kitapkonu:
                    <asp:Label ID="kitapkonuLabel" runat="server" Text='<%# Bind("kitapkonu") %>' />
                    <br />
                    kitapyazar:
                    <asp:Label ID="kitapyazarLabel" runat="server" Text='<%# Bind("kitapyazar") %>' />
                    <br />

                    kitapfiyat:
                    <asp:Label ID="kitapfiyatLabel" runat="server" Text='<%# Bind("kitapfiyat") %>' />
                    <br />
                    kitapid:
                    <asp:Label ID="kitapidLabel" runat="server" Text='<%# Eval("kitapid") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:onlinekitap %>" DeleteCommand="DELETE FROM [Tbl_Kitap] WHERE [kitapid] = @kitapid" InsertCommand="INSERT INTO [Tbl_Kitap] ([kitapresim], [kitapad], [kitapturu], [kitapkonu], [kitapyazar], [kitapfiyat], [kitapid]) VALUES (@kitapresim, @kitapad, @kitapturu, @kitapkonu, @kitapyazar, @kitapfiyat, @kitapid)" SelectCommand="SELECT [kitapresim], [kitapad], [kitapturu], [kitapkonu], [kitapyazar], [kitapfiyat], [kitapid] FROM [Tbl_Kitap]" UpdateCommand="UPDATE [Tbl_Kitap] SET [kitapresim] = @kitapresim, [kitapad] = @kitapad, [kitapturu] = @kitapturu, [kitapkonu] = @kitapkonu, [kitapyazar] = @kitapyazar, [kitapfiyat] = @kitapfiyat WHERE [kitapid] = @kitapid">
                    <DeleteParameters>
                        <asp:Parameter Name="kitapid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="kitapresim" Type="String" />
                        <asp:Parameter Name="kitapad" Type="String" />
                        <asp:Parameter Name="kitapturu" Type="String" />
                        <asp:Parameter Name="kitapkonu" Type="String" />
                        <asp:Parameter Name="kitapyazar" Type="String" />
                        <asp:Parameter Name="kitapfiyat" Type="Decimal" />
                        <asp:Parameter Name="kitapid" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="kitapresim" Type="String" />
                        <asp:Parameter Name="kitapad" Type="String" />
                        <asp:Parameter Name="kitapturu" Type="String" />
                        <asp:Parameter Name="kitapkonu" Type="String" />
                        <asp:Parameter Name="kitapyazar" Type="String" />
                        <asp:Parameter Name="kitapfiyat" Type="Decimal" />
                        <asp:Parameter Name="kitapid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                </div>
            </div>
        </div>

</asp:Content>

