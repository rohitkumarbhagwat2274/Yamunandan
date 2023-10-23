<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerProductManagement.aspx.cs" Inherits="yamunandan.CustomerProductManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center"><h1>Customer Product Seller </h1></div>
    <br />
    <div class="col-lg-4">
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/electronic.jpg" Height="140px" Width="169px" OnClick="ImageButton1_Click" />
        <h2>About&nbsp; Electronics Product Seller</h2>
        <p>
            <a class="btn btn-default " href="AboutCustSellerElectronicProduct.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="medicine" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/medicine.jpg"  Width="169px" OnClick="medicine_Click"  />
        <h2>About Medicines Seller</h2>
        <p>
            <a class="btn btn-default " href="AboutCustomerSellermedicine.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="milk" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/cow milk.jpg"  Width="169px"  />
        <h2>About Milk Seller</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
</asp:Content>
