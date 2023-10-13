<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayEmployee.aspx.cs" Inherits="yamunandan.DisplayEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
      <div>
            <asp:DropDownList ID="usertype" runat="server" OnSelectedIndexChanged="usertype_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem>Select the Employee Type</asp:ListItem>
                <asp:ListItem>Accountent</asp:ListItem>
                <asp:ListItem>Delivery Partner</asp:ListItem>
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Seller</asp:ListItem>
                <asp:ListItem>Distributor</asp:ListItem>
                <asp:ListItem>Customer Care</asp:ListItem>
                <asp:ListItem>Maintainer</asp:ListItem>
                <asp:ListItem>Electrician</asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <h1>
            <asp:Button ID="Button1" runat="server" BackColor="Red" BorderWidth="2px" Text="Back" Width="120px" ForeColor="#99FF66" OnClick="Button1_Click" Height="41px" />
        </h1>
    </p>
</asp:Content>
