<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admindashboard.aspx.cs" Inherits="yamunandan.admindashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <h3>Welcome:<asp:Label ID="Label2" runat="server" Text='<%# Session["username"] %>'></asp:Label></h3>

    <div class="col-lg-4">
        <asp:ImageButton ID="employees" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/employee image.jpg"  Width="169px" OnClick="employees_Click" />
        <h2>Employees</h2>
        <p>
            <a class="btn btn-default " href="UserManagement.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="medicines" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/medicine.jpg"  Width="169px" />
        <h2>Medicines</h2>
        <p>
            <a class="btn btn-default " href="http://localhost:54509/pharmacymanagement.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="grossary" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/Grocery.jpg"  Width="169px" />
        <h2>Grocery</h2>
        <p>
            <a class="btn btn-default " href="http://localhost:54509/GroceryManagement.aspx" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="sellproduct" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/sellproduct.jpg"  Width="169px" />
        <h2>Customers Sell Product</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="cart" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/cart.png"  Width="169px" />
        <h2>Cart Product</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="delivery" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/deleverory.png"  Width="169px" />
        <h2>About Delivery</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="customer" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/customer.jpg"  Width="169px" />
        <h2>About Customers</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="milk" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/milk.jpg"  Width="169px" />
        <h2>About Milk Seller</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="feedback" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/feedback.jpg"  Width="169px" />
        <h2>Feedback</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="retunrproduct" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/exchange product.png"  Width="169px" />
        <h2>About Returned Product </h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="addmin" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/admin.jpg"  Width="169px" />
        <h2>About Admin</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="discount" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/discount.jpg"  Width="169px" />
        <h2>Discounts</h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <div class="col-lg-4">
        <asp:ImageButton ID="coupan" runat="server" class="img-circle" Height="140px" ImageUrl="~/images/coupan.jpg"  Width="169px" />
        <h2>Create Coupan <del>100</del></h2>
        <p>
            <a class="btn btn-default " href="#" role="button">View More »</a></p>
    </div>
    <br />
</p>
</asp:Content>
