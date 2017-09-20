<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSection.aspx.cs" Inherits="ComplaintSystem.AddSection" %>

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
            color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="border: thick groove #990000; background-color: #FFFFFF;">
        <strong><em>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="31px" Text="Back" />
&nbsp; Add New Section<br />
        <br />
        <span class="auto-style2">&nbsp;&nbsp;&nbsp; Enter Section Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AddSecTxt" runat="server" Height="30px" Width="339px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddSectionBtn" runat="server" Height="31px" OnClick="AddSectionBtn_Click" Text="Add" Width="100px" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Sec_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="text-align: center; margin-left: 63px" Width="655px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Sec_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Sec_id" />
                <asp:BoundField DataField="Sec_name" HeaderText="Section Name" SortExpression="Sec_name" />
                <asp:BoundField DataField="Dept_id" HeaderText="Dept_id" SortExpression="Dept_id" Visible="False" />
                <asp:BoundField DataField="Dept_name" HeaderText="Department Name" SortExpression="Dept_name" />
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
        </span></em></strong>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Section] WHERE [Sec_id] = @original_Sec_id AND [Sec_name] = @original_Sec_name AND [Dept_id] = @original_Dept_id" InsertCommand="INSERT INTO [Section] ([Sec_name], [Dept_id]) VALUES (@Sec_name, @Dept_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Section.Sec_id, Section.Sec_name, Section.Dept_id, Department.Dept_name FROM Section INNER JOIN Department ON Section.Dept_id = Department.Dept_id WHERE (Section.Dept_id = @Dept_id)" UpdateCommand="UPDATE [Section] SET [Sec_name] = @Sec_name, [Dept_id] = @Dept_id WHERE [Sec_id] = @original_Sec_id AND [Sec_name] = @original_Sec_name AND [Dept_id] = @original_Dept_id">
            <DeleteParameters>
                <asp:Parameter Name="original_Sec_id" Type="Int32" />
                <asp:Parameter Name="original_Sec_name" Type="String" />
                <asp:Parameter Name="original_Dept_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sec_name" Type="String" />
                <asp:Parameter Name="Dept_id" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Dept_id" QueryStringField="Dept_id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sec_name" Type="String" />
                <asp:Parameter Name="Dept_id" Type="Int32" />
                <asp:Parameter Name="original_Sec_id" Type="Int32" />
                <asp:Parameter Name="original_Sec_name" Type="String" />
                <asp:Parameter Name="original_Dept_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
