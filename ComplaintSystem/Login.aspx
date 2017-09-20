<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ComplaintSystem.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="CenterDiv" style="border:none;"> 
             <div class="CenterDiv" style="border:none;"> <asp:Login ID = "Login1" runat = "server" OnAuthenticate= "ValidateUser">
                 <LabelStyle Font-Bold="True" />
                 <LoginButtonStyle Font-Bold="True" Font-Names="Arial Narrow" ForeColor="#990000" Height="27px" Width="60px" />
                 <TextBoxStyle BorderStyle="Ridge" Font-Bold="False" Width="150px" />
                 <TitleTextStyle Font-Bold="True" Font-Size="15pt" />
                 <ValidatorTextStyle Width="10px" />
                 </asp:Login>
             </div>

         </div>
    
</asp:Content>
