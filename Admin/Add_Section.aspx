<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Section.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divAlignment">
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Sec_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Style="text-align: center; margin-left: 63px" Width="655px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Sec_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Sec_id" />
                        <asp:BoundField DataField="Sec_name" HeaderText="Section Name" SortExpression="Sec_name" />
                        <asp:BoundField DataField="Dept_id" HeaderText="Dept_id" SortExpression="Dept_id" Visible="False" />
                        <asp:BoundField DataField="Dept_name" HeaderText="Department Name" SortExpression="Dept_name" />
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

    </div>
</asp:Content>
