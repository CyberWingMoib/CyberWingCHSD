<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_Designation.aspx.cs" Inherits="ComplaintSystem.Admin.Add_Designation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        font-size: x-large;
    }
        .auto-style11 {
            width: 100%;
        }
        .auto-style12 {
            margin: auto auto auto 330px;
            width: 50%;
            border: 3px solid green;
            padding: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="auto-style11"> 
         <div class="auto-style12" style=" border:none;">
    
             <asp:LinkButton ID="BackButton" runat="server" OnClick="BackButton_Click">Back</asp:LinkButton>
             <br />
    
             <br />
             <strong><span class="auto-style9">Add/Edit Designation<br />
             </span></strong><br />
    
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Des_id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    Des_id:
                <asp:Label ID="Des_idLabel1" runat="server" Text='<%# Eval("Des_id") %>' />
                    <br />
                    Des_name:
                <asp:TextBox ID="Des_nameTextBox" runat="server" Text='<%# Bind("Des_name") %>' />
                    <br />
                    Dept_id:
                    <asp:TextBox ID="Dept_idTextBox" runat="server" Text='<%# Bind("Dept_id") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Designation:
                <asp:TextBox ID="Des_nameTextBox" runat="server" Text='<%# Bind("Des_name") %>' />
                    <br />
                   
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Des_id" DataSourceID="SqlDataSource2" CellPadding="3" Width="403px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                     <asp:BoundField DataField="Des_name" HeaderText="Designation" SortExpression="Des_name" />
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
       
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" DeleteCommand="DELETE FROM [Designation] WHERE [Des_id] = @original_Des_id AND [Des_name] = @original_Des_name AND (([Dept_id] = @original_Dept_id) OR ([Dept_id] IS NULL AND @original_Dept_id IS NULL))" InsertCommand="INSERT INTO [Designation] ([Des_name], [Dept_id]) VALUES (@Des_name, @Dept_id)" SelectCommand="SELECT [Des_id], [Des_name], [Dept_id] FROM [Designation]  WHERE (Dept_id = @Dept_id)" UpdateCommand="UPDATE [Designation] SET [Des_name] = @Des_name WHERE [Des_id] = @original_Des_id AND [Des_name] = @original_Des_name " ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
               <SelectParameters>
                <asp:QueryStringParameter DefaultValue="1" Name="Dept_id" QueryStringField="Dept_id" Type="Int32" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_Des_id" Type="Int32" />
                <asp:Parameter Name="original_Des_name" Type="String" />
                <asp:Parameter Name="original_Dept_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Des_name" Type="String" />
               <asp:QueryStringParameter DefaultValue="1" Name="Dept_id" QueryStringField="Dept_id" Type="Int32" />
            </InsertParameters>
         
            <UpdateParameters>
                <asp:Parameter Name="Des_name" Type="String" />
                
                <asp:Parameter Name="original_Des_id" Type="Int32" />
                <asp:Parameter Name="original_Des_name" Type="String" />
                <asp:Parameter Name="original_Dept_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
         </div>
</asp:Content>
