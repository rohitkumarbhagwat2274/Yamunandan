<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSellerAddress.aspx.cs" Inherits="yamunandan.CustomerSellerAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Customer Seller Address</title>
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
        <!-- Address page -->
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
        <div class="center-page">
            <div class="form-group">
                <label class="col-xs-11">User Name:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" Text='<%# Session["username"] %>' ReadOnly="True"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Address Type:</label>
                <div class="col-xs-11">
                    <asp:DropDownList ID="addtype" runat="server">
                        <asp:ListItem>Residential</asp:ListItem>
                        <asp:ListItem>Permanent</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">House No / Name:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="home" runat="server" CssClass="form-control" placeholder="Enter House No., Building Name"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Post Office:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="po" runat="server" CssClass="form-control" placeholder="Enter Post Office"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Police Station:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="ps" runat="server" CssClass="form-control" placeholder="Enter Police Station"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">District:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="dist" runat="server" CssClass="form-control" placeholder="Enter District"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">State:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="state" runat="server" CssClass="form-control" placeholder="Enter State"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">City:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="city" runat="server" CssClass="form-control" placeholder="Enter City"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">PinCode:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="pin" runat="server" CssClass="form-control" placeholder="Enter PinCode"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Status:</label>
                <div class="col-xs-11">
                    <asp:DropDownList ID="status" runat="server">
                        <asp:ListItem>Show</asp:ListItem>
                        <asp:ListItem>Hide</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-11">Address Proof:</label>
                <div class="col-xs-11">
                    <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
                </div>
            </div>

            <div class="form-group">
                <div class="col-xs-11">
                    <asp:Button ID="back" CssClass="btn-success" runat="server" Text="Back" OnClick="back_Click" />
                    <asp:Button ID="btnsave" runat="server" CssClass="btn-success" Text="Save" OnClick="btnsave_Click" />
                    <asp:Button ID="update" runat="server" CssClass="btn-success" OnClick="update_Click" Text="Update" />
                </div>
            </div>
             <!-- Display with gridview start -->
            <label class="col-xs-11">Address Details:</label>
        
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            </asp:GridView>
       
        <!-- Display with gridview end -->
        </div>
        <!-- Address page end -->

       
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
