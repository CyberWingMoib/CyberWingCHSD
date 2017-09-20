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


   
        &nbsp; <span class="auto-style1"><strong><em>Inbox</em></strong></span>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="HomHardware" Style="margin-left: 20px; margin-top: 53px; margin-right: 8px;" Width="891px" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Comp_name" HeaderText="Name" SortExpression="Comp_name" />
                <asp:BoundField DataField="Comp_designation" HeaderText="Designation" SortExpression="Comp_designation" />
                <asp:BoundField DataField="Comp_department" HeaderText="Department" SortExpression="Comp_department" />
                <asp:BoundField DataField="Comp_section" HeaderText="Section" SortExpression="Comp_section" />
                <asp:BoundField DataField="Comp_roomno" HeaderText="Room No" SortExpression="Comp_roomno" />
                <asp:BoundField DataField="Comp_type" HeaderText="Complaint Type" SortExpression="Comp_type" />
                <asp:BoundField DataField="Comp_detail" HeaderText="Detail" SortExpression="Comp_detail" />
                <asp:BoundField DataField="Datetime" HeaderText="Date-Time" SortExpression="Datetime" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
                <asp:BoundField DataField="Completiondate" HeaderText="Completion Date" SortExpression="Completiondate" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <asp:SqlDataSource ID="HomHardware" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_name], [Comp_designation], [Comp_department], [Comp_section], [Comp_roomno], [Comp_type], [Comp_detail], [Datetime], [Status], [Action], [Completiondate] FROM [ReceivingDesk] WHERE (([Status] = @Status) AND ([Comp_type] = @Comp_type))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                <asp:SessionParameter DefaultValue="Hardware" Name="Comp_type" SessionField="Comp_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>
