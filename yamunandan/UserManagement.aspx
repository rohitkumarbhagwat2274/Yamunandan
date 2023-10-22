<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserManagement.aspx.cs" Inherits="yamunandan.UserManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: center; vertical-align: top;">
                        &nbsp;</td>
                    <td class="auto-style8" style="text-align: center">&nbsp;</td>
                    <td class="auto-style7" style="text-align: center; width: 857px;">
                       
                        
                      
                        <div class="align-content-xl-center"><h1>User Management</h1></div>
                    </td>
                    
                        <asp:Button ID="back" runat="server" BackColor="#990000" ForeColor="White" Height="55px" OnClick="back_Click" Text="X" Width="41px" CssClass="border-success" />
                   
                </tr>
            </table>
        </div>
       
    <div class="col-lg-4">
        <asp:ImageButton ID="admin" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/admin.jpg"  Width="169px" OnClick="admin_Click"   />
        <h2>Create New Admin</h2>
        <p>
            <a class="btn btn-default " href="admin.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="displayadmin" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/admin.jpg"  Width="169px" OnClick="displayadmin_Click"  />
        <h2>Display and Update Admin</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="employee" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/employee image.jpg"  Width="169px" OnClick="employee_Click"  />
        <h2>Create New Employee</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="displayemployee" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/employee image.jpg" Width="169px" OnClick="displayemployee_Click" />
        <h2>Display Employee</h2>
        <p>
            <a class="btn btn-default " href="DisplayEmployee.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="salary" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/salary.jpg"  Width="169px" OnClick="salary_Click" />
        <h2>Do Employee Payment</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
</asp:Content>
