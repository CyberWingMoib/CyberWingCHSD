<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Departments.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="divAlignment">

        <strong><em>&nbsp;&nbsp;&nbsp; </em><span><span class="auto-style2"><em>Add New Department</em></span><em><br />
            <br />
            <span class="auto-style3">&nbsp; Enter Department Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DeptTxt" runat="server" Height="30px" Width="339px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DeptAddBtn" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="30px" OnClick="DeptAddBtn_Click" Text="Add" Width="100px" />
                <br />
                <br /></strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Dept_id" DataSourceID="AddDepatmnt" ForeColor="#333333" GridLines="None" Style="text-align: center; margin-left: 48px" Width="683px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Dept_id" HeaderText="Sr.No." InsertVisible="False" ReadOnly="True" SortExpression="Dept_id" />
                <asp:BoundField DataField="Dept_name" HeaderText="Name" SortExpression="Dept_name" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="Dept_id" DataNavigateUrlFormatString="Add_Section.aspx?Dept_id={0}" Text="Add &amp; View Section" />
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
        <strong>
            <asp:SqlDataSource ID="AddDepatmnt" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [Dept_id] = @Dept_id" InsertCommand="INSERT INTO [Department] ([Dept_name]) VALUES (@Dept_name)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [Dept_name] = @Dept_name WHERE [Dept_id] = @Dept_id">
                <DeleteParameters>
                    <asp:Parameter Name="Dept_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Dept_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Dept_name" Type="String" />
                    <asp:Parameter Name="Dept_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </strong></span></em></span>

    </div>
</asp:Content>
