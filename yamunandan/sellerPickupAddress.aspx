<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerPickupAddress.aspx.cs" Inherits="yamunandan.sellerPickupAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Seller Pickup Address</title>
<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="css/custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
       <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="starting.aspx"><span><img src="images/logo.jpg" height="30" /></span> Yamunandan pvt</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="sellerhomepage.aspx">Seller Home Page</a></li>
                        <li ><a href="Addsellproducts.aspx">Sell Products</a></li>
                        <li><a href="#">About</a></li>
                        <li class="active" class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Seller Address Details<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Seller Address</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="CustomerSellerAddress.aspx">New Address</a></li>
                                <li role="separator" class="divider"></li>                               
                                <li><a href="sellerAddressUpdate.aspx">Update Address</a></li>  
                                 <li role="separator" class="divider"></li>                               
                                <li><a href="sellerPickupAddress.aspx">Pickup Address</a></li>  
                            </ul>
                        </li>
                        <li><a href="help.aspx">Help Line</a></li>
                        <li><a href="Customerselldashboard.aspx">Log Out</a></li>
                    </ul>
                </div>
            </div>
        </div>
         <!--Pickup Address page -->
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
        <h1>Your Pickup Address </h1>
        <div class="center-page">
            <div class="form-group">
                <label class="col-xs-11">User Name:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" Text='<%# Session["username"] %>' ReadOnly="True"></asp:TextBox>
                </div>
            </div>

           

            <div class="form-group">
                <label class="col-xs-11">Pickup Address:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="add" runat="server" CssClass="form-control" placeholder="Enter Full Address Including Near by Location " TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>

           
            <div class="form-group">
                <label class="col-xs-11">PinCode:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="pin" runat="server" CssClass="form-control" placeholder="Enter PinCode"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Phone Number:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="phno" runat="server" CssClass="form-control" placeholder="Enter Current Available Phone Number"></asp:TextBox>
                </div>
            </div>
            
            <div class="form-group">
                <div class="col-xs-11">
                    <asp:Button ID="back" CssClass="btn-success" runat="server" Text="Back" OnClick="back_Click" />
                    <asp:Button ID="btnsave" runat="server" CssClass="btn-success" Text="Save" OnClick="btnsave_Click" />
                    <asp:Button ID="update" runat="server" CssClass="btn-success" OnClick="update_Click" Text="Update" />
                    <h1></h1>
                </div>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Check"></asp:Label>
             <!-- Display with gridview start -->
            <div class="center">
            <label class="col-xs-11">Address Details:</label>
        </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="pickupid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="pickupid" HeaderText="pickupid" InsertVisible="False" ReadOnly="True" SortExpression="pickupid" />
                    <asp:BoundField DataField="sellerusername" HeaderText="sellerusername" SortExpression="sellerusername" />
                    <asp:BoundField DataField="fullAddress" HeaderText="fullAddress" SortExpression="fullAddress" />
                    <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                    <asp:BoundField DataField="Phno" HeaderText="Phno" SortExpression="Phno" />
                </Columns>
            </asp:GridView>
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [sellerpickupAddressTable]"></asp:SqlDataSource>
       
        <!-- Display with gridview end -->
        </div>
        <!-- Pickup Address page end -->
    </form>
    <!-- Footer -->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; Yamunandan.pvt &middot; <a href="Customerselldashboard.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>
        <!-- Footer end -->
</body>
</html>
