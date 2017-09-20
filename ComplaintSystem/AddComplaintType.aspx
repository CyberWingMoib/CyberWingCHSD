<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddComplaintType.aspx.cs" Inherits="ComplaintSystem.AddComplaintType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 356px;
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
    &nbsp;&nbsp; <em><strong>Add Complaint Type<br />
        <br />
        <span class="auto-style2">&nbsp; Enter New Complaint Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="CompliantTxt" runat="server" Height="30px" Width="339px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="AddComplaintBtn" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="30px" OnClick="AddComplaintBtn_Click" Text="Add" Width="100px" />
        <br />
        </span></strong><span class="auto-style2">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Ct_id" DataSourceID="AddCompType" ForeColor="#333333" GridLines="None" Height="142px" style="text-align: center; margin-left: 47px" Width="681px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Ct_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Ct_id" />
                <asp:BoundField DataField="Ct_name" HeaderText="Name" SortExpression="Ct_name" />
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
        <asp:SqlDataSource ID="AddCompType" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Complainttype] WHERE [Ct_id] = @original_Ct_id AND [Ct_name] = @original_Ct_name" InsertCommand="INSERT INTO [Complainttype] ([Ct_name]) VALUES (@Ct_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Complainttype]" UpdateCommand="UPDATE [Complainttype] SET [Ct_name] = @Ct_name WHERE [Ct_id] = @original_Ct_id AND [Ct_name] = @original_Ct_name">
            <DeleteParameters>
                <asp:Parameter Name="original_Ct_id" Type="Int32" />
                <asp:Parameter Name="original_Ct_name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ct_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ct_name" Type="String" />
                <asp:Parameter Name="original_Ct_id" Type="Int32" />
                <asp:Parameter Name="original_Ct_name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </span></em>
    </form>
</body>
</html>
