<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_User.aspx.cs" Inherits="ComplaintSystem.Admin.Add_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divAlignment">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                UserId:
            <asp:Label ID="UserIdLabel1" runat="server" Text='<%# Eval("UserId") %>' />
                <br />
                Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                <br />
                Password:
            <asp:TextBox ID="PasswordTextBox" runat="server" Text='<%# Bind("Password") %>' />
                <br />
                Designation:
            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                <br />
                Email:
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table style="width: 100%;">
                    <tr>
                        <td>Username:</td>
                        <td>
                            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server" Text='<%# Bind("Password") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Designation: </td>
                        <td>
                            <asp:TextBox ID="DesignationTextBox" runat="server" Text='<%# Bind("Designation") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
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
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                &nbsp;<br />
                &nbsp;<br />
                <br />
                &nbsp;<br />
                &nbsp;
            </InsertItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New User" />
            </ItemTemplate>
        </asp:FormView>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" Width="569px">
            <Columns>
                <asp:BoundField DataField="UserId" HeaderText="Sr.No." InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="Username" HeaderText="User Name" SortExpression="Username" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([Username], [Password], [Designation], [Email]) VALUES (@Username, @Password, @Designation, @Email)" SelectCommand="SELECT [UserId], [Username], [Password], [Designation], [Email] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Username] = @Username, [Password] = @Password, [Designation] = @Designation, [Email] = @Email WHERE [UserId] = @UserId">
            <DeleteParameters>
                <asp:Parameter Name="UserId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="UserId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
