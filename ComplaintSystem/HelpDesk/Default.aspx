<%@ Page Title="" Language="C#" MasterPageFile="~/HelpDesk/Helpdesk.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ComplaintSystem.HelpDesk.Inbox1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <style type="text/css">
         .auto-style1 {
            color: #990000;
            font-size: xx-large;
        }
    </style>

   
   
        &nbsp; <span class="auto-style1"><strong><em style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Inbox</em></strong></span>
        <div class="CenterDiv" style="border:none;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataSourceID="HomHardware"  Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" OnDataBinding="GridView1_DataBinding" OnRowDataBound="GridView1_RowDataBound">
            <Columns>
                 <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                <asp:BoundField DataField="Comp_sno" HeaderText="Compalaint No." SortExpression="Comp_sno" >
                 <HeaderStyle Wrap="False" />
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_name" HeaderText="Name" SortExpression="Comp_name" />
                <asp:BoundField DataField="Comp_designation" HeaderText="Designation" SortExpression="Comp_designation" />
                <asp:BoundField DataField="Comp_department" HeaderText="Department" SortExpression="Comp_department" />
                <asp:BoundField DataField="Comp_section" HeaderText="Section" SortExpression="Comp_section" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_roomno" HeaderText="Room No" SortExpression="Comp_roomno" >
                 <HeaderStyle Wrap="False" />
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_type" HeaderText="Complaint Type" SortExpression="Comp_type" >
                 <HeaderStyle Wrap="False" />
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_detail" HeaderText="Detail" SortExpression="Comp_detail" >
                <ItemStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="Datetime" HeaderText="Date-Time" SortExpression="Datetime" >
                 <HeaderStyle Wrap="True" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
               

                 <asp:TemplateField >
                          <ItemTemplate >
                            <asp:LinkButton  ID="AddButton" runat="server" 
                              CommandName="Select" 
                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                              Text="Acknowledge" />
                          </ItemTemplate> 
                        </asp:TemplateField>
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

        <asp:SqlDataSource ID="HomHardware" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_sno], [Comp_name], [Comp_designation], [Comp_department], [Comp_section], [Comp_roomno], [Comp_type], [Comp_detail], [Datetime], [Status] FROM [ReceivingDesk] WHERE (([Status] = @Status) AND ([Comp_type] = @Comp_type))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                <asp:SessionParameter DefaultValue="Hardware" Name="Comp_type" SessionField="Comp_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>
