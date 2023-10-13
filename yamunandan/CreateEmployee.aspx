<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateEmployee.aspx.cs" Inherits="yamunandan.CreateEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center">
        <h1>
            <asp:Label ID="Label1" runat="server" ForeColor="#009900" Text="O-----------"></asp:Label>
            <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="O---------O"></asp:Label>
        </h1>
    </div>
    <h1></h1>
    <h1></h1>

        <!--Signup page-->
        <div class="center-page">
            <h1></h1>
            <label class="col-xs-11">
            Employee Id:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="empid" runat="server" CssClass="form-control" placeholder="Enter Employee Id"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Created By Userid:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="createdbyuserid" runat="server" CssClass="form-control" placeholder="Enter Created by Admin id"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            User Type:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="usertype" runat="server">
                    <asp:ListItem>Accountent</asp:ListItem>
                    <asp:ListItem>Delivery Partner</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Sellar</asp:ListItem>
                    <asp:ListItem>Distributer</asp:ListItem>
                    <asp:ListItem>Customer Care</asp:ListItem>
                    <asp:ListItem>Maintainer</asp:ListItem>
                    <asp:ListItem>Electrician</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-xs-11">
            User Name:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Password:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="pass" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Conform Password:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="conformpass" runat="server" CssClass="form-control" placeholder="Enter Conform Password"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Email Id:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Your Email id"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Phone Number:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="phno" runat="server" CssClass="form-control" placeholder="Enter Your Phone Number"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Name:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Enter Name of the Employee"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Government Type Id:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Voter Id</asp:ListItem>
                    <asp:ListItem Value="Pan Card">Pan Card</asp:ListItem>
                    <asp:ListItem>Drivery Licence</asp:ListItem>
                    <asp:ListItem>Pasport</asp:ListItem>
                    <asp:ListItem>Vissa</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-xs-11">
            Government Id:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="govid" runat="server" CssClass="form-control" placeholder="Enter Created by Admin id"></asp:TextBox>
            </div>
            <label class="col-xs-11">
            Government Id Proof:</label>
            <div class="col-xs-11">
                <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
            </div>
            <label class="col-xs-11">
            Gender:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="gender" runat="server" Height="16px" Width="126px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Transgender</asp:ListItem>
                </asp:DropDownList>
            </div>
            <label class="col-xs-11">
            Upload Profile Picture:</label>
            <div class="col-xs-11">
                <asp:FileUpload ID="FileUpload2" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
            </div>
            <label class="col-xs-11">
            Monthly Selary:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="pay" runat="server" CssClass="form-control" placeholder="Enter Created by Admin id"></asp:TextBox>
            </div>
            <div class="col-xs-11">
                <asp:Button ID="back" runat="server" CssClass="btn-success" Text="back" OnClick="back_Click" />
                <asp:Button ID="btnsave" runat="server" cssClass="btn-success"  Text="SAVE" OnClick="btnsave_Click" />
                <asp:Button ID="update" runat="server" CssClass="btn-success"  Text="Update" />
            </div>
    </div>




        <!--Signup page end-->
</asp:Content>
