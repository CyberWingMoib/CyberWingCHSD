<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Role_Assignment.aspx.cs" Inherits="ComplaintSystem.Admin.Role_Assignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            font-size: x-large;
        }

        .auto-style11 {
            margin: auto auto auto 330px;
            width: 56%;
            border: 3px solid green;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div style="width: 100%;">
        <div class="auto-style11" style="border: none;">
            <br />
            <strong><span class="auto-style9">Edit Role Assignment<br />
            </span></strong>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Ra_id" DataSourceID="SqlDataSource1" Width="400px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                   
                    <asp:BoundField DataField="DisplayName" HeaderText="Display Name" SortExpression="DisplayName" />
                    <asp:BoundField DataField="RoleName" HeaderText="Role Name" SortExpression="RoleName" />
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

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [RolesAllocation] WHERE [Ra_id] = @Ra_id" InsertCommand="INSERT INTO [RolesAllocation] ([userid], [roleid]) VALUES (@userid, @roleid)" SelectCommand="SELECT RolesAllocation.Ra_id, RolesAllocation.userid, RolesAllocation.roleid, Roles.RoleName, Users.DisplayName FROM RolesAllocation INNER JOIN Users ON RolesAllocation.userid = Users.UserId INNER JOIN Roles ON RolesAllocation.roleid = Roles.RoleId" UpdateCommand="UPDATE [RolesAllocation] SET [userid] = @userid, [roleid] = @roleid WHERE [Ra_id] = @Ra_id">
                <DeleteParameters>
                    <asp:Parameter Name="Ra_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="roleid" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="roleid" Type="Int32" />
                    <asp:Parameter Name="Ra_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </div>
</asp:Content>
