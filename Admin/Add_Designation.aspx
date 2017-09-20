<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Designation.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Designation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divAlignment">
    
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Des_id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    Des_id:
                <asp:Label ID="Des_idLabel1" runat="server" Text='<%# Eval("Des_id") %>' />
                    <br />
                    Des_name:
                <asp:TextBox ID="Des_nameTextBox" runat="server" Text='<%# Bind("Des_name") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Des_name:
                <asp:TextBox ID="Des_nameTextBox" runat="server" Text='<%# Bind("Des_name") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Designation" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Des_id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="291px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Des_id" HeaderText="Sr.No." InsertVisible="False" ReadOnly="True" SortExpression="Des_id" />
                    <asp:BoundField DataField="Des_name" HeaderText="Designation" SortExpression="Des_name" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Designation] WHERE [Des_id] = @Des_id" InsertCommand="INSERT INTO [Designation] ([Des_name]) VALUES (@Des_name)" SelectCommand="SELECT [Des_id], [Des_name] FROM [Designation]" UpdateCommand="UPDATE [Designation] SET [Des_name] = @Des_name WHERE [Des_id] = @Des_id">
            <DeleteParameters>
                <asp:Parameter Name="Des_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Des_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Des_name" Type="String" />
                <asp:Parameter Name="Des_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
