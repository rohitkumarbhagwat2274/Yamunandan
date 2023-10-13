<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="yamunandan.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <asp:Label ID="username" runat="server"   Text="User Name" Placeholder="Enter User Name"></asp:Label><br />
    <asp:TextBox ID="txtusername"  CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="User Name is Required" ControlToValidate="txtusername" ForeColor="#CC0000"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Label ID="pass" runat="server" Text="PassWord"   Placeholder="Enter Password"></asp:Label><br />
    <asp:TextBox ID="txtpass"  CssClass="form-control" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password is Required" ControlToValidate="txtpass" ForeColor="#CC0000"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" CssClass="btn-success" runat="server" Text="Button" OnClick="Button1_Click" />

</p>
</asp:Content>
