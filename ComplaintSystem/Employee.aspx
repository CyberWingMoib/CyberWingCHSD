<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebFormsCSHelpDesk.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 673px;
            width: 761px;
            margin-left: 163px;
        }
        .auto-style4 {
            margin-left: 13px;
        }
        .auto-style5 {
            text-align: left;
        }
        .newStyle1 {
            font-family: Century;
            font-size: large;
        }
        .auto-style3 {
            margin-left: 16px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style7 {
            font-family: Century;
            font-size: xx-large;
        }
        .auto-style8 {
            color: #990000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="border: thick groove #990000; background-color: #FFFFFF; width: 799px;">
   
        <div class="auto-style5">
            <div style="height: 602px">
&nbsp; <span class="auto-style7"><strong><em><span class="auto-style8">Complaint Desk</span></em></strong></span><br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtName" runat="server" CssClass="auto-style4" Height="30px" Width="260px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;<br />
            &nbsp;&nbsp;&nbsp;
        <br />
                &nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Designation:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlDesignation" runat="server" DataSourceID="SqlDataSourceDesg" DataTextField="Des_name" DataValueField="Des_id" style="margin-left: 11px" Height="29px" Width="200px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Type:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlType" runat="server" style="margin-left: 9px" Height="30px" Width="200px">
                <asp:ListItem>Officer</asp:ListItem>
                <asp:ListItem>Official</asp:ListItem>
            </asp:DropDownList>
                <br />
            <br />
        <br />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Department:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlDepartment" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDept" DataTextField="Dept_name" DataValueField="Dept_id" OnDataBound="DropDownList2_DataBound" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="margin-left: 9px" Height="30px" Width="200px">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label7" runat="server" Text="Section:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlSection" runat="server" Height="30px" Width="200px">
        </asp:DropDownList>
            &nbsp;&nbsp;
                <br />
&nbsp;
                <br />
&nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Room No:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtRoomno" runat="server" CssClass="auto-style3" Height="30px" Width="87px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label5" runat="server" Text="Phone No:"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="txtPhoneno" runat="server" CssClass="auto-style2" Height="30px" Width="200px"></asp:TextBox>
                <br />
                <br />
&nbsp;&nbsp;
        <asp:Label ID="Label8" runat="server" Text="Complaint Type:"></asp:Label>
&nbsp;
            <asp:DropDownList ID="ddlComplainttype" runat="server" AutoPostBack="True" DataSourceID="CompType" DataTextField="Ct_name" DataValueField="Ct_id" OnDataBound="DropDownList2_DataBound" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" style="margin-left: 9px" Height="30px" Width="200px">
            </asp:DropDownList>
                <br />
                <br />
&nbsp;&nbsp;
        <asp:Label ID="Label9" runat="server" Text="Detail:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtDetail" runat="server" CssClass="auto-style2" Height="94px" TextMode="MultiLine" Width="471px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
        <br />
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Complaint Made Via:"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:RadioButton ID="radOnline" runat="server" Text="Online" Checked="True" GroupName="RegularMenu"/>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radTelephone" runat="server" Text="Telephone" GroupName="RegularMenu"/>
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="radOther" runat="server" Text="Other" GroupName="RegularMenu" />
                <br />
            <br />
        &nbsp;&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Register By:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtRegisterby" runat="server" CssClass="auto-style2" Height="30px" Width="260px"></asp:TextBox>
            &nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="Designation:"></asp:Label>
            <asp:DropDownList ID="ddlRegDesig" runat="server" DataSourceID="SqlDataSourceDesg" DataTextField="Des_name" DataValueField="Des_id" style="margin-left: 11px" Height="30px" Width="200px">
            </asp:DropDownList>
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubmit" runat="server" Height="30px" OnClick="Button1_Click" Text="Submit" Width="100px" style="color: #990000; font-style: italic; font-weight: 700" />
                <br />
                <asp:SqlDataSource ID="CompType" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Complainttype]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDesg" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Designation]"></asp:SqlDataSource>
   
        <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Dept_name], [Dept_id] FROM [Department]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
   
            <br />
        </div>
   
    </form>
</body>
</html>
