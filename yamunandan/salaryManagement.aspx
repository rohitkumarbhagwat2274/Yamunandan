<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="salaryManagement.aspx.cs" Inherits="yamunandan.salaryManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style4" style="text-align: center">
                        <asp:Image ID="Image1" runat="server" Height="98px" ImageUrl="~/images/logo.jpg" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style2" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                    <td class="auto-style4" style="text-align: center; background-color: #C0C0C0">
                        <h3>
                            <asp:Label ID="Label1" runat="server" Text="Employee Payment"></asp:Label>
                        </h3>
                    </td>
                    <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                    <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                </tr>
            </table>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label2" runat="server" Text="Updated By Username : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:TextBox ID="updatedbyusername" runat="server" Height="21px" ReadOnly="True" Width="375px"></asp:TextBox>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label7" runat="server" Text="User Id : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:DropDownList ID="userid" runat="server" DataSourceID="SqlDataSource1" DataTextField="userid" DataValueField="userid">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdetails]"></asp:SqlDataSource>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label3" runat="server" Text="Amount : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:TextBox ID="amount" runat="server" Width="375px"></asp:TextBox>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="amount" ErrorMessage="Amount is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label4" runat="server" Text="Payment Date : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:TextBox ID="paydate" runat="server" Width="374px"></asp:TextBox>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label5" runat="server" Text="Transaction Id : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:TextBox ID="transid" runat="server" Width="374px"></asp:TextBox>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="transid" ErrorMessage="Transaction Number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Label ID="Label6" runat="server" Text="Upload Transaction Recept : "></asp:Label>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" Width="379px" />
                </td>
                <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11" style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
                <td class="auto-style10" style="text-align: right; background-color: #C0C0C0">
                    <asp:Button ID="back" runat="server" BackColor="Maroon" BorderWidth="1px" CssClass="auto-style8" ForeColor="#FFCC00" Height="49px" OnClick="back_Click" Text="Back" Width="134px" CausesValidation="false"/>
                </td>
                <td class="auto-style9" style="text-align: left; background-color: #C0C0C0">
                    <asp:Button ID="pay" runat="server" BackColor="#993333" BorderWidth="1px" ForeColor="#FFCC00" Height="50px" OnClick="pay_Click" Text="Pay" Width="176px" />
                    <asp:Button ID="display" runat="server" BackColor="#993333" BorderWidth="1px" ForeColor="#FFCC00" Height="50px" OnClick="display_Click" Text="Display payment" Width="176px" CausesValidation="false"/>
                </td>
                <td style="text-align: center; background-color: #C0C0C0">&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
