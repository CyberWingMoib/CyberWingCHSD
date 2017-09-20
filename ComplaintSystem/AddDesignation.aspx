<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDesignation.aspx.cs" Inherits="ComplaintSystem.AddDesignation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 350px;
            width: 799px;
            margin-left: 258px;
            margin-top: 92px;
        }
        .auto-style1 {
            font-size: xx-large;
            color: #990000;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="border: thick groove #990000; background-color: #FFFFFF;">
        <strong><em><span class="auto-style1">&nbsp; Add New Designation</span></em></strong><br />
        <br />
&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp; <span class="auto-style2"><strong><em>Enter Designation Name:</em></strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AddDesigTxt" runat="server" Height="30px" Width="339px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="30px" OnClick="Button1_Click" style="font-size: large" Text="Add" Width="100px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Des_id" DataSourceID="AddDesig" ForeColor="#333333" GridLines="None" style="text-align: center; margin-left: 58px; font-size: large; font-style: italic;" Width="680px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Des_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Des_id" />
                <asp:BoundField DataField="Des_name" HeaderText="Name" SortExpression="Des_name" />
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
        <asp:SqlDataSource ID="AddDesig" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Designation] WHERE [Des_id] = @Des_id" InsertCommand="INSERT INTO [Designation] ([Des_name]) VALUES (@Des_name)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Designation]" UpdateCommand="UPDATE [Designation] SET [Des_name] = @Des_name WHERE [Des_id] = @Des_id">
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
    </form>
</body>
</html>
