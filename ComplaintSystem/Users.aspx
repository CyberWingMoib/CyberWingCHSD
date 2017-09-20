<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="ComplaintSystem.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 446px;
            margin-left: 258px;
            margin-top: 92px;
        }
        .auto-style1 {
            color: #990000;
            font-size: xx-large;
        }
        .auto-style2 {
            font-size: large;
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="border: thick groove #990000; background-color: #FFFFFF; width: 799px;">
        <strong>&nbsp;User Registration<br />
        </strong><span class="auto-style2"><strong>
        <br />
        &nbsp; Enter User Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="idTxt" runat="server" Width="339px" Height="30px"></asp:TextBox>
        <br />
&nbsp; Enter password:&nbsp;&nbsp;
        <asp:TextBox ID="passwordtxt" runat="server" Width="339px" Height="30px" TextMode="Password"></asp:TextBox>
        <br />
        &nbsp; Roles:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="RolesDropD" runat="server" DataSourceID="GetRole" DataTextField="RoleName" DataValueField="Roleid" Height="30px" Width="250px">
        </asp:DropDownList>
        <br />
&nbsp; Complaint Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlComptype" runat="server" DataSourceID="GetCompType" DataTextField="ct_name" DataValueField="Ct_id" Height="30px" Width="250px">
        </asp:DropDownList>
        <br />
&nbsp; Designation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DesigDropD" runat="server" DataSourceID="GetDesig" DataTextField="Des_name" DataValueField="Des_id" Height="30px" Width="250px" style="margin-left: 0px">
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" OnClick="Button1_Click" Text="Add" Width="100px" Height="30px" />
&nbsp;&nbsp;
        <br />
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Userid" DataSourceID="UserRoles" ForeColor="#333333" GridLines="None" style="font-style: italic; margin-left: 25px; text-align: center;" Width="745px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Userid" HeaderText="User Id" ReadOnly="True" SortExpression="Userid" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Roles" HeaderText="Roles" SortExpression="Roles" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="UserRoles" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Userid] = @Userid" InsertCommand="INSERT INTO [Users] ([Userid], [Password], [Roles], [Designation]) VALUES (@Userid, @Password, @Roles, @Designation)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Password] = @Password, [Roles] = @Roles, [Designation] = @Designation WHERE [Userid] = @Userid">
            <DeleteParameters>
                <asp:Parameter Name="Userid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Userid" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Roles" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Roles" Type="String" />
                <asp:Parameter Name="Designation" Type="String" />
                <asp:Parameter Name="Userid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </strong>
        </span><span class="auto-style2"><strong>
        <asp:SqlDataSource ID="GetDesig" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Designation]"></asp:SqlDataSource>
        </strong></span><span class="auto-style2"><strong>
        <asp:SqlDataSource ID="GetRole" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Roles]"></asp:SqlDataSource>
        </strong></span>

        <span class="auto-style2"><strong>
        <asp:SqlDataSource ID="GetCompType" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Complainttype]"></asp:SqlDataSource>
        </strong></span>
    </form>
</body>
</html>
