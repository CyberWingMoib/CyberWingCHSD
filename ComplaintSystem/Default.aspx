<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsCSHelpDesk.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/StyleSheet1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="auto-style1" style="margin: 0 auto; border: thick groove #990000; background-color: #FFFFFF;">
        <div id="topHeader">

            Cyber Support Help Desk

        </div>
        <div class="container-fluid">
            <br />
         
            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ddlDepartment" runat="server" InitialValue="Select Department" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label3" runat="server" Text="Department:"></asp:Label>
                        </div>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlDepartment" AppendDataBoundItems="true" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceDept" DataTextField="Dept_name" DataValueField="Dept_id" OnDataBound="DropDownList2_DataBound" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="30px" Width="240px">
                                <asp:ListItem>Select Department</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="ddlSection" runat="server" InitialValue="Select Section" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="Label7" runat="server" Text="Section:"></asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:DropDownList ID="ddlSection" runat="server" Height="30px" Width="240px">
                                <asp:ListItem>Select Section</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>

            </div>
            <br />
            <div class="row">

                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtName" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label1" runat="server" Text="Enter Name:"></asp:Label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtName" runat="server" Width="240px"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="ddlDesignation" runat="server" InitialValue="Select Designation" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="Label2" runat="server" Text="Designation:"></asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:DropDownList ID="ddlDesignation" runat="server"  Height="30px" Width="240px">
                                <asp:ListItem>Select Designation</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtRoomno" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label6" runat="server" Text="Room No:"></asp:Label>

                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtRoomno" runat="server" Height="30px" Width="240"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtPhoneno" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                        </div>
                        <div class="col-md-3">
                            <asp:Label ID="Label5" runat="server" Text="Phone No:"></asp:Label>
                        </div>
                        <div class="col-md-8">
                            <asp:TextBox ID="txtPhoneno" runat="server" Height="30px" Width="240"></asp:TextBox>

                        </div>

                    </div>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="ddlComplainttype" runat="server" InitialValue="Select Complaint Type" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label8" runat="server" Text="Complaint Type:"></asp:Label>
                        </div>
                        <div class="col-md-7">
                            <asp:DropDownList ID="ddlComplainttype" runat="server" AutoPostBack="True" DataSourceID="CompType" DataTextField="Ct_name" DataValueField="Ct_id" OnDataBound="DropDownList2_DataBound" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="30px" Width="240px">
                                <asp:ListItem>Select Complaint Type</asp:ListItem>
                            </asp:DropDownList>

                        </div>

                    </div>
                </div>
            </div>
            <br />

            <div class="row">
                <div class="col-md-2" style="padding-left: 45px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="txtDetail" ForeColor="Red" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>

                    <asp:Label ID="Label9" runat="server" Text="Detail:"></asp:Label>
                </div>
                <div class="col-md-10" style="padding-left: 50px; padding-right: 50px;">
                    <asp:TextBox ID="txtDetail" runat="server" Height="94px" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </div>
            </div>
            <br />

            <div class="row">

                <div class="col-md-3" style="padding-left: 52px">
                    <asp:Label ID="Label10" runat="server" Text="Complaint Mode:"></asp:Label>
                </div>


                <div class="col-md-2">
                    <asp:RadioButton ID="radOnline" runat="server" Text="" Checked="True" GroupName="RegularMenu" />&nbsp Online
                </div>
                <div class="col-md-3">
                    <asp:RadioButton ID="radTelephone" runat="server" Text="" GroupName="RegularMenu" />&nbsp Telephone
                </div>
                <div class="col-md-2">
                    <asp:RadioButton ID="radOther" runat="server" Text="" GroupName="RegularMenu" />&nbsp Other
                </div>
                <div class="col-md-3"></div>
            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-4">
                            <asp:Label ID="Label11" runat="server" Text="Register By:"></asp:Label>
                        </div>
                        <div class="col-md-7">
                            <asp:TextBox ID="txtRegisterby" runat="server" Height="30px" Width="240"></asp:TextBox>

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <asp:Label ID="Label12" runat="server" Text="Designation:"></asp:Label>

                        </div>
                        <div class="col-md-8">
                            <asp:DropDownList ID="ddlRegDesig" runat="server" DataSourceID="SqlDataSourceDesg" DataTextField="Des_name" DataValueField="Des_id" Height="30px" Width="240px">
                            </asp:DropDownList>
                        </div>

                    </div>
                </div>
            </div>
            <br />
            <br />

            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1">
                        </div>
                        <div class="col-md-4">
                            <asp:Label ID="Label13" runat="server" Text="Your IP:"></asp:Label>

                        </div>
                        <div class="col-md-7">
                            <asp:Label ID="lblIP" runat="server" Text="Your IP:" BackColor="Red" ForeColor="White" Style="text-align: center" Width="240px"></asp:Label>

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-3">
                            <asp:Label ID="Label16" runat="server" Text="Your MAC:"></asp:Label>

                        </div>
                        <div class="col-md-8">
                            <asp:Label ID="lblMAC" runat="server" Text="Your MAC:" BackColor="Red" ForeColor="White" Style="text-align: center" Width="240px"></asp:Label>

                        </div>
                    </div>
                </div>

            </div>
            <br />
            <br />
            <div class="row">
                <div class="col-md-9"></div>
                <div class="col-md-3">
                    <asp:Button ID="btnSubmit" runat="server" Height="30px" OnClick="Button1_Click" Text="Submit" Width="150px" Style="color: #990000; font-style: italic; font-weight: 700" />
                </div>

            </div>

        </div>
        <asp:SqlDataSource ID="CompType" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Complainttype]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceDesg" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT * FROM [Designation]"></asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:CyberHelpDeskConnectionString %>" SelectCommand="SELECT [Dept_name], [Dept_id] FROM [Department]"></asp:SqlDataSource>
    </form>
</body>
</html>
