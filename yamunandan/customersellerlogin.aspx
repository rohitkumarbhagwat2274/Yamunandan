<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customersellerlogin.aspx.cs" Inherits="yamunandan.customersellerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>customer seller login</title>
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
                        <li><a href="Customerselldashboard.aspx">Customer Seller Dashboard</a></li>
                        <li><a href="customersellersignup.aspx"> Seller Sign UP</a></li>
                        <li class="active"><a href="customersellerlogin.aspx">Seller Sign IN</a></li>  
                                               
                        <li><a href="help.aspx">Help Line</a></li>
                        
                    </ul>
                </div>
            </div>
        </div>
         

        <!--Sign up starting--->
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />

        <div class=" center center-page">
            <h1><asp:Label ID="Label1" runat="server" Text="Seller Sign IN"></asp:Label></h1>
            
            <label class="col-xs-11"> User Name:</label>
            
            <div class="col-xs-11">
              
            <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter Seller User Name"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name is Required" ControlToValidate="username" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </div>
          
            <label class="col-xs-11"> Password:</label>
            
            <div class="col-xs-11">
              
            <asp:TextBox ID="pass" runat="server" CssClass="form-control" placeholder="Enter Your Password " TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is Required" ControlToValidate="pass" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </div>          
           
            <div class="col-xs-11">
             <h1></h1>
                <asp:Button ID="Back" cssclass="btn-success" runat="server" CausesValidation="false" Text="&laquo; Cancel &laquo;" OnClick="Back_Click" />
                <asp:Button ID="Login" cssclass="btn-success" runat="server" Text="Login &raquo;" OnClick="Login_Click" />              
             </div>
             <div class="col-xs-11">
                       
                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/customersellersignup.aspx">Sigh UP</asp:HyperLink>
             </div>
            <div class="col-xs-11">
                <asp:HyperLink ID="HyperLink2" runat="server">Forgot Password</asp:HyperLink>
             </div>

           

         </div>
            </div>


        <!---Sign up end --->




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
