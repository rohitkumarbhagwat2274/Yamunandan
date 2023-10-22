<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customerselldashboard.aspx.cs" Inherits="yamunandan.Customerselldashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customer Sells Dashboard</title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/custom.css" rel="stylesheet" />
    
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
                        <li><a href="CustomerStartingPage.aspx">Home</a></li>
                        <li class="active"><a href="Customerselldashboard.aspx">Customer Sell</a></li>
                        <li><a href="#">About</a></li>
                       <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Sign Up<b class="caret"></b></a>
                            <ul class="dropdown-menu">                                                                
                                <li><a href="customersellersignup.aspx">New Registation</a></li>
                                <li><a href="customersellerlogin.aspx">Log in</a></li>
                                
                            </ul>
                        </li>
                        <li><a href="commonhelp.aspx">Help Line</a></li>
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
                        <img src="images/ayurvedic.jpg" alt=" Ayurvedic" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Ayurvedic Medicines</h3>
                            <p>Sell The Unused Product And Earn Money</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="images/medicine.jpg" alt="Allopathy Medicine" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Allopathy Medicine</h3>
                            <p>Sell The Unuser Medicine And Earn Money </p>
                        </div>
                    </div>
                     <div class="item">
                        <img src="images/electronic.jpg" alt="ELECTRONIC PRODUCT" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3>Electronic Products</h3>
                            <p>Sell The Extra Electronic Product and Earn Money </p>
                      </div>      
                   </div>

                    <div class="item">
                        <img src="images/milk.jpg" alt="Milk" style="width: 100%; height: 251px;" />
                        <div class="carousel-caption">
                            <h3> Sell Milk  </h3>
                            <p>Sell Milk and Earn Best Price According To The Market  </p>
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
                   <p>Sell the unused Mobile Phone and uarn Money More then other Place</p>
                   <p><a class="btn btn-default " href ="#" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                    <img class="img-circle" src="images/cow milk.jpg" alt="thumb" width="140" height="140" />
                    <h2>Milk</h2>
                    <p>Sell here cow's and Buffallow's Milk and uarn Money Hand to Hand More then Oher place</p><p><del>₹30</del>    ₹40</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>
               
            </div>
        </div>
        <!-- Middle Contents end -->




 <!-- Footer -->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back to top</a></p>
                <p>&copy; Yamunandan.pvt &middot; <a href="Customerselldashboard.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
            </div>
        </footer>
        <!-- Footer end -->

    </form>
</body>
</html>
