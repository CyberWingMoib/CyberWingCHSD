<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master"  CodeBehind="AddDepartment.aspx.cs" Inherits="ComplaintSystem.AddDepartment" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <%--  <style type="text/css">
        #form1 {
            height: 350px;
            width: 799px;
            margin-left: 267px;
            margin-top: 82px;
        }
        .auto-style2 {
            font-size: xx-large;
            color: #990000;
        }
        .auto-style3 {
            font-size: large;
        }
    </style>--%>

        <strong><em>&nbsp;&nbsp;&nbsp; </em><span><span class="auto-style2"><em>Add New Department</em></span><em><br />
        <br />
        <span class="auto-style3">&nbsp; Enter Department Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="DeptTxt" runat="server" Height="30px" Width="339px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DeptAddBtn" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="30px" OnClick="DeptAddBtn_Click" Text="Add" Width="100px" />
        <br />
        <br />
        </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Dept_id" DataSourceID="AddDepatmnt" ForeColor="#333333" GridLines="None" style="text-align: center; margin-left: 48px" Width="683px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Dept_id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Dept_id" />
                <asp:BoundField DataField="Dept_name" HeaderText="Name" SortExpression="Dept_name" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="Dept_id" DataNavigateUrlFormatString="AddSection.aspx?Dept_id={0}" Text="Add &amp; View Section" />
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
    </asp:Content>