<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="ComplaintSystem.Admin.Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="divAlignment">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="RoleId" DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                RoleId:
            <asp:Label ID="RoleIdLabel1" runat="server" Text='<%# Eval("RoleId") %>' />
                <br />
                RoleName:
            <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td>RoleId:</td>
                        <td>
                            <asp:TextBox ID="RoleIdTextBox" runat="server" Text='<%# Bind("RoleId") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>RoleName:</td>
                        <td>
                            <asp:TextBox ID="RoleNameTextBox" runat="server" Text='<%# Bind("RoleName") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;<br />
                &nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Role" />
            </ItemTemplate>
        </asp:FormView>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" Width="297px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="RoleId" HeaderText="Sr.#" ReadOnly="True" SortExpression="RoleId" />
                    <asp:BoundField DataField="RoleName" HeaderText="Role Title" SortExpression="RoleName" />
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
        </p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Roles] WHERE [RoleId] = @RoleId" InsertCommand="INSERT INTO [Roles] ([RoleId], [RoleName]) VALUES (@RoleId, @RoleName)" SelectCommand="SELECT [RoleId], [RoleName] FROM [Roles]" UpdateCommand="UPDATE [Roles] SET [RoleName] = @RoleName WHERE [RoleId] = @RoleId">
            <DeleteParameters>
                <asp:Parameter Name="RoleId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoleId" Type="Int32" />
                <asp:Parameter Name="RoleName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="RoleId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
