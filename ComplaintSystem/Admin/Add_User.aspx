<%@ Page Title="" MaintainScrollPositionOnPostback="true" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_User.aspx.cs" Inherits="ComplaintSystem.Admin.Add_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
        }

        .auto-style11 {
            margin: auto auto auto 330px;
            width: 58%;
            border: 3px solid green;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%;">
        <div class="auto-style11" style="border: none;">

            <%--<br />
                Complaint Type:
                <asp:DropDownList ID="ddlComplainttype" runat="server" AutoPostBack="True" DataSourceID="CompType" DataTextField="Ct_name" DataValueField="Ct_id" SelectedValue='<%# Eval("Ct_id") %>'  Height="30px" Width="190px">
                    </asp:DropDownList>
                <br />--%>


            <br />
            <strong><span class="auto-style9">Add/Edit User<br />

            </span></strong>
            <br />

            <asp:Panel ID="Panel1" runat="server">

                <table>
                    <tr>
                        <td class="auto-style12">Display Name:</td>
                        <td class="auto-style12">
                            <asp:TextBox ID="txt_displayname" placeholder="Display name" runat="server" Height="20px" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Login
                        </td>
                        <td>
                            <asp:TextBox ID="txt_login" placeholder="Login name" runat="server" Height="20px" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td>
                            <asp:TextBox ID="txt_password" placeholder="Password" runat="server" Height="20px" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="txt_email" placeholder="admin@abc.com" runat="server" Height="20px" Width="160px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Role:</td>
                        <td class="auto-style13">
                            <asp:DropDownList ID="ddl_role" runat="server" DataSourceID="Roles" DataTextField="RoleName" DataValueField="RoleId" Height="27px" Width="165px">
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td style="text-align: right">
                            <asp:Button ID="btn_Insert" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#990000" Height="30px" OnClick="btn_Insert_Click" Text="Insert" Width="75px" Style="text-align: center" /></td>
                    </tr>
                </table>
            </asp:Panel>
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="Users" Style="text-align: center;" Width="683px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Sr.">
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>

                    <asp:BoundField DataField="DisplayName" HeaderText="DisplayName" SortExpression="DisplayName" />
                    <asp:BoundField DataField="UserName" HeaderText="Login" SortExpression="UserName" />



                    <asp:TemplateField HeaderText="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>' TextMode="Password"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text="*****"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="RoleId" HeaderText="RoleId" SortExpression="RoleId" Visible="False" />

                    <asp:TemplateField HeaderText="Role">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Roles" DataTextField="RoleName" DataValueField="RoleId" SelectedValue='<%# Bind("RoleId") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("RoleName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>



                    <asp:CommandField ShowEditButton="True" />

                </Columns>
                <EditRowStyle BackColor="#2461BF" />
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
            <br />

            <br />
            <br />
            <asp:SqlDataSource ID="Users" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT Users.UserId, Users.DisplayName, Users.UserName, Users.Password, Users.Email, Users.RoleId, Roles.RoleName FROM Users INNER JOIN Roles ON Users.RoleId = Roles.RoleId" DeleteCommand="DELETE FROM [Users] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [Users] ([DisplayName], [UserName], [Password], [Email], [RoleId]) VALUES (@DisplayName, @UserName, @Password, @Email, @RoleId)" UpdateCommand="UPDATE [Users] SET [DisplayName] = @DisplayName, [UserName] = @UserName, [Password] = @Password, [Email] = @Email, [RoleId] = @RoleId WHERE [UserId] = @UserId">
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="DisplayName" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="RoleId" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="DisplayName" Type="String" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="RoleId" Type="Int32" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <asp:SqlDataSource ID="Roles" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Roles]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
