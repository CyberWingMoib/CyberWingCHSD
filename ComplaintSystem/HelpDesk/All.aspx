<%@ Page Title="" Language="C#" MasterPageFile="~/HelpDesk/Helpdesk.Master" AutoEventWireup="true" CodeBehind="All.aspx.cs" Inherits="ComplaintSystem.HelpDesk.All" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
     <style type="text/css">
         .auto-style1 {
            color: #990000;
            font-size: xx-large;
        }
    </style>

   
   
        &nbsp; <span class="auto-style1"><strong><em style="text-align: center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Completed</em></strong></span>
        
    <div class="CenterDiv" style="border: none;">
         <div style="overflow-x:auto;width:1310px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceHardware" Height="249px" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:TemplateField HeaderText="Sr.">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label>
                    </ItemTemplate>
                    <HeaderStyle Width="40px" />
                </asp:TemplateField>
                <asp:BoundField DataField="Comp_sno" HeaderText="Complaint no." SortExpression="Comp_sno" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_name" HeaderText="Name" SortExpression="Comp_name" />
                <asp:BoundField DataField="Comp_designation" HeaderText="Designation" SortExpression="Comp_designation" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_department" HeaderText="Department" SortExpression="Comp_department" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_section" HeaderText="Section" SortExpression="Comp_section" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_roomno" HeaderText="Room no" SortExpression="Comp_roomno" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_type" HeaderText="Complaint Type" SortExpression="Comp_type" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Comp_detail" HeaderText="Detail" SortExpression="Comp_detail" />
                <asp:BoundField DataField="Datetime" HeaderText="Date and Time" SortExpression="Datetime" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                <asp:BoundField DataField="Completiondate" HeaderText="Completion Date" SortExpression="Completiondate" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
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
             </div>

        <asp:SqlDataSource ID="SqlDataSourceHardware" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_sno], [Comp_name], [Comp_designation], [Comp_department], [Comp_section], [Comp_roomno], [Comp_type], [Comp_detail], [Datetime], [Status], [Action], [Completiondate] FROM [ReceivingDesk] WHERE ([Status] = @Status)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="Completed" Name="Status" QueryStringField="Status" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>



</asp:Content>
