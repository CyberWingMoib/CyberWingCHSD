<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="View_Complaints.aspx.cs" Inherits="ComplaintSystem.Admin.View_Complaints" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 1350px;
            margin-left: 10px;
        }
        .auto-style12 {
            margin-left: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <br />
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <br />

    <div style="overflow-x:auto;" class="auto-style11">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Comp_no" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style12">
        <Columns>
             <asp:TemplateField  HeaderText="Sr.   No." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" Wrap="False" />
                    </asp:TemplateField>
            <asp:BoundField DataField="Comp_sno" HeaderText="Complaint No." SortExpression="Comp_sno" >
             <HeaderStyle Wrap="False" />
             <ItemStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_department" HeaderText="Deparrtment" SortExpression="Comp_department" />
            <asp:BoundField DataField="Comp_section" HeaderText="Section" SortExpression="Comp_section" >
             <ItemStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_name" HeaderText="Complainant Name" SortExpression="Comp_name" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_designation" HeaderText="Designation" SortExpression="Comp_designation" >
             <ItemStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_roomno" HeaderText="Room  No." SortExpression="Comp_roomno" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Phoneno" HeaderText="Phone  No." SortExpression="Phoneno" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_type" HeaderText="Complaint   Type" SortExpression="Comp_type" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_detail" HeaderText="Complaint   Detail" SortExpression="Comp_detail" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Datetime" HeaderText="Date  and  Time" SortExpression="Datetime" >
             <HeaderStyle Wrap="False" />
             <ItemStyle Wrap="True" Width="400px" />
             </asp:BoundField>
            <asp:BoundField DataField="Comp_made_via" HeaderText="Complaint Made Via" SortExpression="Comp_made_via" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Register_by" HeaderText="Register By" SortExpression="Register_by" >
             <HeaderStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="Register_byDesig" HeaderText="Register by Desig" SortExpression="Register_byDesig" >
             <HeaderStyle Wrap="False" />
             <ItemStyle Wrap="False" />
             </asp:BoundField>
            <asp:BoundField DataField="User_id" HeaderText="User" SortExpression="User_id" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Action" HeaderText="Action" SortExpression="Action" />
            <asp:BoundField DataField="Completiondate" HeaderText="Completion Date" SortExpression="Completiondate" >
             <HeaderStyle Wrap="False" />
             <ItemStyle Wrap="True" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_no], [Comp_sno], [Comp_department], [Comp_section], [Comp_name], [Comp_designation], [Comp_roomno], [Phoneno], [Comp_type], [Comp_detail], [Datetime], [Comp_made_via], [Register_by], [Register_byDesig], [User_id], [Status], [Action], [Completiondate] FROM [ReceivingDesk]"></asp:SqlDataSource>
</asp:Content>
