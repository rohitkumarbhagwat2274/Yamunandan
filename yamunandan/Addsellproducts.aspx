<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addsellproducts.aspx.cs" Inherits="yamunandan.Addsellproducts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>sell products</title>
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
                        <li class="active"><a href="Addsellproducts.aspx">Sell Products</a></li>
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



        <!--Sell Product start code-->

         <div class="center-page">
             <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
            
            <label class="col-xs-11">Seller UserName:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter seller user name" ReadOnly="True"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Product Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="productname" runat="server" CssClass="form-control" placeholder="Enter Product Name"></asp:TextBox>
             </div>

             
              <label class="col-xs-11"> Product Brand name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="productbrand" runat="server" CssClass="form-control" placeholder="Enter Product Brand Name"></asp:TextBox>
             </div>

              <label class="col-xs-11"> Product Type:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="productType" runat="server">
                    <asp:ListItem>Electronic Product</asp:ListItem>
                    <asp:ListItem>Medicine</asp:ListItem>
                    <asp:ListItem>Hardware</asp:ListItem>
                </asp:DropDownList>
             </div>


             <label class="col-xs-11">Product Colour :</label>
                   <div class="col-xs-11">
                    <asp:DropDownList ID="color" runat="server" Height="17px" Width="178px">
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Green</asp:ListItem>
                        <asp:ListItem>Blue</asp:ListItem>
                        <asp:ListItem>White</asp:ListItem>
                        <asp:ListItem>Yellow</asp:ListItem>
                        <asp:ListItem>Pink</asp:ListItem>
                        <asp:ListItem>Perpel</asp:ListItem>
                        <asp:ListItem>Sky Blue</asp:ListItem>
                        <asp:ListItem>Black</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                   </div>

            
            <label class="col-xs-11"> Batch Id:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="batchid" runat="server" CssClass="form-control" placeholder="Enter Batch Id/Barcode Number"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Expiry Date:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="exp" runat="server" CssClass="form-control" type = "date" placeholder="Enter Expiry Date of the medicine"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Manufacturing Date:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="mfg" runat="server" CssClass="form-control" type = "date" placeholder="Enter manufacturing date"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Condition/Defect of the product:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="condition" runat="server" CssClass="form-control" placeholder="Enter Condition of the Product in details"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Per Unit Price:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="unitPrice" runat="server" CssClass="form-control" placeholder="Enter each price"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Quantity:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="quantity" runat="server" CssClass="form-control" placeholder="Enter Your Quantity"></asp:TextBox>
                
             </div>

              <label class="col-xs-11"> Upload Picture:</label>
             
            <div class="col-xs-11">
                <asp:Label ID="note" runat="server" Text="Note: " ForeColor="Red"></asp:Label>Upload front Picture of the product Make Sure The Image should be clear and not more older then 7 day's<br />
            <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" Width="379px" />
                
             </div>
           
              <div class="col-xs-11">
                <asp:Label ID="Label1" runat="server" Text="Note: " ForeColor="Red"></asp:Label>Upload Back Picture of the product With Service Tag number if it's available<br />
            <asp:FileUpload ID="FileUpload2" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" Width="379px" />
                
             </div>
                             
                <div class="col-xs-11">
                    <h1></h1>
                <asp:Button ID="add" runat="server" cssClass="btn btn-success" BorderWidth="2px" Text="Sell Product" Width="135px" OnClick="add_Click"  />
            </div>
         
           <div class="col-xs-11">
              
            <a class="btn btn-default " href ="sellerhomepage.aspx" role="button" > &laquo; Go Back &laquo;</a>
           </div>
       </div>     
            
       

        <!--Sell Product end code-->

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