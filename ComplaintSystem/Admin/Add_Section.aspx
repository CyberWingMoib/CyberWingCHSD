<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Section.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Section" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            margin: auto auto auto 320px;
            width: 70%;
            border: 3px solid green;
            padding: 10px;
        }
        .auto-style13 {
            margin-left: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style11"> 
         <div class="auto-style12" style=" border:none;">
             <strong><em>
            &nbsp; 
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back</asp:LinkButton>
             <br />
             <br />
             <span class="auto-style9">Add/Edit Section<br />
             </span><br />
            <br />
            <span class="auto-style2">&nbsp;&nbsp;&nbsp; Enter Section Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="AddSecTxt" runat="server" Height="26px" Width="191px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="AddSectionBtn" runat="server" Height="31px" OnClick="AddSectionBtn_Click" Text="Add" Width="74px" />
                &nbsp;&nbsp;
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Sec_id" DataSourceID="SqlDataSource1" Style="text-align: center; " Width="655px" CssClass="auto-style13" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <Columns>
                         <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                        <asp:BoundField DataField="Sec_name" HeaderText="Section Name" SortExpression="Sec_name" />
                        <asp:BoundField DataField="Dept_id" HeaderText="Dept_id" SortExpression="Dept_id" Visible="False" />
                        <asp:BoundField DataField="Dept_name" HeaderText="Department Name" SortExpression="Dept_name" />
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

    </div>
</asp:Content>
