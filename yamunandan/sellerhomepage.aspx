<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerhomepage.aspx.cs" Inherits="yamunandan.sellerhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>seller home page</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href="css/custom.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/custom.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
                        <li class="active"><a href="sellerhomepage.aspx">Seller Home Page</a></li>
                        <li><a href="Addsellproducts.aspx">Sell Products</a></li>
                        <li><a href="#">About</a></li>
                        <li class="dropdown">
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

     
        
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
        <!--Start code-->

        <div class=" center ">
           <h1> Welcome to: 
           <asp:Label ID="username" runat="server" Text='<%# Session["username"] %>'></asp:Label></h1>
           
        </div>
        <div class="container center ">
           <div class="row" >
               <div class="col-lg-4">                                      

                   <h2>Selled Products</h2>
                   <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                   
                   <p><a class="btn btn-default " href ="#" role="button" > About Selled product &raquo;</a></p>
               </div>
           </div>
        </div>



        <!--end code-->
            </div>
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

