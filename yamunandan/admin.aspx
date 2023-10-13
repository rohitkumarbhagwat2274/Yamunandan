<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="yamunandan.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
         <div class="col-lg-4">
    <table class="auto-style1" style="background-color: #00FFFF" >
            <tr>
                <td colspan="2" style="text-align: center; background-color: #FFFFFF;">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/admin.jpg" Height="180px" Width="187px" />
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <h1>
                        <asp:Label ID="Label1" runat="server" Text=" Add New Admin"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="USER TYPE"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="createdby" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Accountent</asp:ListItem>
                        <asp:ListItem>Delivery Partner</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="USER NAME"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="username" runat="server" Width="315px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username" ErrorMessage="Username is required" ForeColor="#993300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label4" runat="server" Text="PASSWORD"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="315px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="Password is required" ForeColor="#993300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label5" runat="server" Text="CONFORM PASSWORD"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="conformpass" runat="server" Width="316px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass" ControlToValidate="conformpass" ErrorMessage="Password is not matched" ForeColor="#993300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="EMAIL ID"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="email" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="PHONE NUMBER"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="phno" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label8" runat="server" Text="NAME"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="name" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label19" runat="server" Text="Upload Government Id"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload3" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">
                    <asp:Label ID="Label9" runat="server" Text="GENDER"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:DropDownList ID="gender" runat="server" Height="16px" Width="126px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Transgender</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label10" runat="server" Text="PROFILE PICTURE"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label20" runat="server" Text="Payment"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="payment" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label11" runat="server" Text="Home"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="home" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label12" runat="server" Text="Post Office"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="po" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label17" runat="server" Text="Police Station"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="ps" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label13" runat="server" Text="District"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="dist" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="text-align: right">
                    <asp:Label ID="Label14" runat="server" Text="State"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="state" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label15" runat="server" Text="City"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="city" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label16" runat="server" Text="PinCode"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="pincode" runat="server" Width="315px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Label ID="Label18" runat="server" Text="Upload Address Proof"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:FileUpload ID="FileUpload2" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="text-align: right">
                    <asp:Button ID="btnback" runat="server" BackColor="#CC6600"  Text="BACK" CausesValidation="false" OnClick="btnback_Click"/>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnsave" runat="server" BackColor="#CC6600" Text="SAVE" />
                    <asp:Button ID="update" runat="server" BackColor="#CC6600"  Text="Update" CausesValidation="false" OnClick="update_Click" />
                </td>
            </tr>
        </table>
        <div>
        </div>
        </div>
    </p>
    
</asp:Content>
