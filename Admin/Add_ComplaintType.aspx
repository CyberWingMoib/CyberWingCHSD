<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Add_ComplaintType.aspx.cs" Inherits="ComplaintSystem.Admin.Add_ComplaintType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="divAlignment">
      
            
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ct_id" DataSourceID="SqlDataSource2">
                <EditItemTemplate>
                    Ct_id:
                <asp:Label ID="Ct_idLabel1" runat="server" Text='<%# Eval("Ct_id") %>' />
                    <br />
                    Ct_name:
                <asp:TextBox ID="Ct_nameTextBox" runat="server" Text='<%# Bind("Ct_name") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table style="width: 100%;">
                        <tr>
                            <td>Complaint Type:</td>
                            <td>
                                <asp:TextBox ID="Ct_nameTextBox" runat="server" Text='<%# Bind("Ct_name") %>' />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    &nbsp;<br />
                    &nbsp;
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Add New Complaint Type " />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Ct_id" DataSourceID="SqlDataSource2" Width="284px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Ct_id" HeaderText="Sr. No." InsertVisible="False" ReadOnly="True" SortExpression="Ct_id" />
                    <asp:BoundField DataField="Ct_name" HeaderText="Complaint Type " SortExpression="Ct_name" />
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
</asp:Content>
