<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="yamunandan.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        
        <div class="center-page" >
                                                       
                    
                        <h2><asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN"></asp:Label></h2>
                    
                   
                    <asp:DropDownList ID="usertype" runat="server">
                        <asp:ListItem>Please Select any one</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Accountent</asp:ListItem>
                        <asp:ListItem>Delivery Partner</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Sellar</asp:ListItem>
                        <asp:ListItem>Distributer</asp:ListItem>
                        <asp:ListItem>Customer Care</asp:ListItem>
                        <asp:ListItem>Maintainer</asp:ListItem>
                        <asp:ListItem>Electrician</asp:ListItem>
                    </asp:DropDownList>
                   
         
                        <asp:TextBox ID="userid" runat="server" Width="297px"  CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                        <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="user name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                  
                        <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="298px"  CssClass="form-control" placeholder="Enter Your Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="user name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                            
            <br />
       
                        <asp:Button cssclass= "btn-success" ID="login" runat="server"  BorderStyle="Ridge" BorderWidth="1px"  OnClick="login_Click" TabIndex="1" Text="LOGIN" />
            <asp:HyperLink ID="forgotpass" runat="server">Forgot Password</asp:HyperLink>
                    
            <br />

</p>
</asp:Content>
