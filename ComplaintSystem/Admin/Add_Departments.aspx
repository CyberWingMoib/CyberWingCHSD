<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Departments.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            margin: auto auto auto 330px;
            width: 67%;
            border: 3px solid green;
            padding: 10px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="width:100%;"> 
         <div class="auto-style11" style=" border:none;">

             <em>

        <strong>&nbsp;&nbsp;&nbsp;<span><span class="auto-style9">Add/Edit Department</span><br />
            <br />
            <span class="auto-style3">
             <br />
             Enter Department Name:&nbsp;<asp:TextBox ID="DeptTxt" runat="server" Height="19px" Width="153px"></asp:TextBox>
        <asp:Button ID="DeptAddBtn" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#990000" Height="30px" OnClick="DeptAddBtn_Click" Text="Insert" Width="75px" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br /></span></span>
             </strong><span><span class="auto-style3">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Dept_id" DataSourceID="AddDepatmnt" Style="text-align: center;"  Width="683px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                 <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                <asp:BoundField DataField="Dept_name" HeaderText="Name" SortExpression="Dept_name" />
                <asp:HyperLinkField DataNavigateUrlFields="Dept_id" DataNavigateUrlFormatString="Add_Section.aspx?Dept_id={0}" Text="Add &amp; View Sections" />
                 <asp:HyperLinkField DataNavigateUrlFields="Dept_id" DataNavigateUrlFormatString="Add_Designation.aspx?Dept_id={0}" Text="Add &amp; View Designatios" />
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
        </strong></span></span>
             </em>
             </div>
    </div>
</asp:Content>
