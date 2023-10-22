<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customersellersignup.aspx.cs" Inherits="yamunandan.customersellersignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Seller Customer Sign up</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
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
                        <li><a href="Customerselldashboard.aspx">Customer Seller Dashboard</a></li>
                        <li class="active"><a href="customersellersignup.aspx"> Unused Product Customer Seller Details</a></li>
                        <li ><a href="customersellerlogin.aspx">Seller Sign IN</a></li>  
                                              
                        <li><a href="#">Help Line</a></li>

                        
                    </ul>
                </div>
            </div>
        </div> 

        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />

        
        

         <!--Signup page-->
        <div class="center-page">
            <h1></h1>
            
          
            <label class="col-xs-11"> User Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="pass" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Conform Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="conformpass" runat="server" CssClass="form-control" placeholder="Enter Conform Password" TextMode="Password"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Email Id:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Your Email id"></asp:TextBox>
             </div>
            <label class="col-xs-11"> Phone Number:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="phno" runat="server" CssClass="form-control" placeholder="Enter Your Phone Number"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="name" runat="server" CssClass="form-control" placeholder="Enter Name of the Employee"></asp:TextBox>
             </div>

            
            <label class="col-xs-11"> Gender:</label>
            <div class="col-xs-11">
            <asp:DropDownList ID="gender" runat="server" Height="16px" Width="126px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Transgender</asp:ListItem>
                    </asp:DropDownList>
             </div>
            <label class="col-xs-11"> Upload Profile Picture:</label>
            <div class="col-xs-11">
           <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
             </div>
            
            
            <div class="col-xs-11">
                <asp:Button ID="back" CssClass="btn-success" runat="server" Text="back" OnClick="back_Click" />
                <asp:Button ID="btnsave" runat="server" cssClass="btn-success"  OnClick="btnsave_Click" Text="SAVE" />
                   
             </div>
        </div>




        <!--Signup page end-->

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
