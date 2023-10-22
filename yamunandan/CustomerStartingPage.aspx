<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerStartingPage.aspx.cs" Inherits="yamunandan.CustomerStartingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Customer Page</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                        <li class="active"><a href="starting.aspx">Home</a></li>
                        <li><a href="Customerselldashboard.aspx">Sell Unused Product</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="Signup.aspx">Registration</a></li>
                        <li><a href="help.aspx">Help Line</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-header">Men</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Shirts</a></li>
                                <li><a href="#">T-Shirts</a></li>
                                <li><a href="#">Jeans</a></li>
                                <li><a href="#">Formal Dresses</a></li>
                                <li role="separator" class="divider"></li>
                                <li class="dropdown-header">Women</li>
                                <li role="separator" class="divider"></li>
                                <li><a href="#">Shrees</a></li>
                                <li><a href="#">Kurti</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Image Slider -->
        <div class="container">
            <h2>Carousel Example</h2>
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                    <li data-target="#myCarousel" data-slide-to="3"></li>
                </ol>
                

                <!-- Wrapper for slides -->

                <div class="carousel-inner">
                    <div class="item active">
                        <img src="product/shree1.jpg" alt="Los Angeles" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Women's Fashion</h3>
                            <p>Every Women's Shrees and Top's product 60% off</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="product/Refrigrater1.jpg" alt="Samsung Refrigerator" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Samsung Refrigerator</h3>
                            <p>From ₹8485.16/mo for 24 mos or ₹175000.00 MRP (Inclusive of all taxes)</p>
                            <p>Was Price ₹286000.00 Price Save ₹111000.00</p>
                            <p>Price includes INR 111000 instant savings - 39% off. Limited time only.</p>
                            <p>Earn upto 3500 Smart Club Points</p>
                        </div>
                    </div>
                     <div class="item">
                        <img src="product/i5.jpg" alt="Child Cloth" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Child T-Shirt</h3>
                            <p>70% off for all types of Child Cloth's </p>
                      </div>      
                   </div>

                    <div class="item">
                        <img src="images/fashon.png" alt="Child Cloth" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>New Fashon </h3>
                            <p>70% off for all types of  Cloth's </p>
                      </div>      
                   </div>
               </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
                </div>
        <!-- Image Slider end -->

        <!-- Middle Contents start -->
        <h1></h1>
        <div class="container center">
            <div class="row">
                 <div class="col-lg-4">
                   <img class="img-circle" src="images/phone.jpg" alt="thumb" width="140" height="140" />
                   <h2> Mobiles</h2>
                   <p>This is the best mobile  </p>
                   <p><a class="btn btn-default " href ="#" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="product/n2.jpg" alt="thumb" width="140" height="140" />
                    <h2>Shoes</h2>
                    <p>This is the best Shoes</p><p><del>1499</del>  50% off 798</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="product/i1.jpg" alt="thumb" width="140" height="140" />
                    <h2>T-Shirt</h2>
                    <p>This is the best T-Shirt</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>

            </div>
        </div>
        <!-- Middle Contents end -->

        <!-- Footer -->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; Yamunandan.pvt &middot; <a href="CustomerStartingPage.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>
        <!-- Footer end -->
            </div>
    </form>
</body>
</html>