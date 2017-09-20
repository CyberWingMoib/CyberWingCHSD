<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Roles.aspx.cs" Inherits="ComplaintSystem.Admin.Roles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            margin: auto auto auto 330px;
            width: 50%;
            border: 3px solid green;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="width:100%;"> 
         <div class="auto-style11" style=" border:none;">
             <br />
             <strong><span class="auto-style9">Add/Edit Role<br />
             </span></strong><br />
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleId" DataSourceID="SqlDataSource2" CellPadding="3" Width="358px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                     <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="RoleName" HeaderText="Role Title" SortExpression="RoleName" />
                     <asp:CommandField ShowEditButton="True" />
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
        </div>
</asp:Content>
