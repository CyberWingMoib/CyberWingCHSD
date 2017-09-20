<%@ Page Title="" Language="C#" MasterPageFile="~/HelpDesk/Helpdesk.Master" AutoEventWireup="true" CodeBehind="InProcess.aspx.cs" Inherits="ComplaintSystem.HelpDesk.InProcess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%-- <script>
        function AutoExpand(txtAction) {
            txtAction.style.height = "1px";
            txtAction.style.height = ( txtAction.scrollHeight) + "px";
        }
    </script>--%>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style9 {
            left: 0px;
            top: 0px;
            width: 1585px;
        }
        .auto-style10 {
            position: relative;
            width: 1060px;
            max-width: 100%;
            left: 12px;
            top: 0px;
            height: 422px;
            margin-left: 15px;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style11 {
            margin-left: 12px;
        }
        .auto-style12 {
            text-align: center;
            margin-left: 3px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style10">
        <div class="row" style="left: 40px">
            <div class="auto-style9">
                <p style="font-size:x-large; color:#990000;" class="auto-style12">In Process</p>

                <div style="overflow-x:auto;width:1310px" class="text-center">
        <asp:GridView ID="GridView_1" runat="server" CellPadding="3" DataSourceID="HomHardware" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" OnRowCommand="GridView1_RowCommand" AutoGenerateColumns="False" CssClass="auto-style11" BorderStyle="None">
            <Columns>
                 <asp:TemplateField  HeaderText="Sr." >
                        <ItemTemplate >
                            <asp:Label runat="server" Text='<%#Container.DataItemIndex + 1%> '></asp:Label> 
                        </ItemTemplate>
                        <HeaderStyle Width="40px" />
                    </asp:TemplateField>
                <asp:BoundField DataField="Comp_sno" HeaderText="Compalaint No." SortExpression="Comp_sno" >
                 <HeaderStyle Wrap="False" HorizontalAlign="Center" VerticalAlign="Middle" />
                 <ItemStyle Wrap="False" />
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_name" HeaderText="Name" SortExpression="Comp_name" >
                
                 
                 <HeaderStyle HorizontalAlign="Left" />
                 <ItemStyle Wrap="False" />
                
                 
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_designation" HeaderText="Designation" SortExpression="Comp_designation" >
                 <ItemStyle Wrap="False" />
                 </asp:BoundField>
                <asp:BoundField DataField="Comp_department" HeaderText="Department" SortExpression="Comp_department" >
                 <ItemStyle Wrap="False" />
                 </asp:BoundField>
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
                <asp:BoundField DataField="Datetime" HeaderText="Date and Time" SortExpression="Datetime" >
                 <HeaderStyle Width="200px" Wrap="False" />
                <ItemStyle Width="350px" />
                </asp:BoundField>
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" >
                 <ItemStyle Wrap="False" />
                 </asp:BoundField>
                <asp:TemplateField HeaderText="Action" >
                    <ItemTemplate>
                        <asp:TextBox ID="txtAction" runat="server" Height="29px" style="overflow:hidden" onkeyup="AutoExpand(this)"  TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                        <asp:BoundField DataField="Completiondate" HeaderText="Completion Date" SortExpression="Completiondate" >

                 <HeaderStyle Wrap="False" />
                 </asp:BoundField>

                 <asp:TemplateField >
                          <ItemTemplate >
                            <asp:LinkButton  ID="AddButton" runat="server" 
                              CommandName="Select" 
                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                              Text="Completed" />
                          </ItemTemplate> 
                        </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" Width="200px" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
                    </div>
            </div>
        </div> 
        <div class="row">
            <div class="col-md-12" >
                
                <asp:SqlDataSource ID="HomHardware" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_sno], [Comp_name], [Comp_department], [Comp_section], [Comp_designation], [Comp_roomno], [Phoneno], [Comp_type], [Comp_detail], [Datetime], [Status], [Action], [Completiondate] FROM [ReceivingDesk] WHERE ([Status] = @Status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="inprocess" Name="Status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
        <asp:SqlDataSource ID="HomHardware2" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Comp_sno], [Comp_name], [Comp_designation], [Comp_department], [Comp_section], [Comp_roomno], [Comp_type], [Comp_detail], [Datetime], [Status] FROM [ReceivingDesk] WHERE (([Status] = @Status) AND ([Comp_type] = @Comp_type))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Pending" Name="Status" Type="String" />
                <asp:SessionParameter DefaultValue="Hardware" Name="Comp_type" SessionField="Comp_type" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                
            </div>
        </div>
    </div>
</asp:Content>
