<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_ComplaintType.aspx.cs" Inherits="ComplaintSystem.Admin.Add_ComplaintType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            margin: auto auto auto 330px;
            width: 98%;
            border: 3px solid green;
            padding: 10px;
        }
        .auto-style12 {
            height: 43px;
        }
        .auto-style13 {
            height: 44px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width:100%;"> 
         <div class="auto-style11" style=" border:none;">
      
            
             <br />
             <strong><span class="auto-style9">Add/Edit Complaint Type<br />
             </span></strong><br />

             <table><tr><td class="auto-style12">Complaint Type:</td><td class="auto-style12"><asp:TextBox ID="ComTypeTxt" runat="server" Height="20px" Width="160px"></asp:TextBox></td></tr>
                 <tr><td class="auto-style13">Role:</td><td class="auto-style13"><asp:DropDownList ID="ddl_role" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoleName" DataValueField="RoleId" Height="27px" Width="165px">
             </asp:DropDownList></td></tr>
                 <tr><td></td><td style="text-align: right"><asp:Button ID="DeptAddBtn" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#990000" Height="30px" OnClick="DeptAddBtn_Click" Text="Insert" Width="75px" style="text-align: center" /></td></tr>
             </table>
     
             
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [RoleId], [RoleName] FROM [Roles]"></asp:SqlDataSource>
             <br />
        
            
      
            
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ct_id" DataSourceID="SqlDataSource2" Width="480px" CellPadding="3" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="200px">
                <Columns>
                    <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Ct_name" HeaderText="Complaint Type " SortExpression="Ct_name" />
                    <asp:CommandField ShowDeleteButton="True" Visible="False" />
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
       
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Complainttype] WHERE [Ct_id] = @Ct_id" InsertCommand="INSERT INTO [Complainttype] ([Ct_name]) VALUES (@Ct_name)" SelectCommand="SELECT [Ct_id], [Ct_name] FROM [Complainttype]" UpdateCommand="UPDATE [Complainttype] SET [Ct_name] = @Ct_name WHERE [Ct_id] = @Ct_id">
                <DeleteParameters>
                    <asp:Parameter Name="Ct_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Ct_name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ct_name" Type="String" />
                    <asp:Parameter Name="Ct_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
        </p>
    </div>
        </div>
</asp:Content>
