<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="yamunandan.adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
         <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <link href="css/custom.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link href="css/custom.css" rel="stylesheet" />
    
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 100%;
            border: 1px solid #008080;
        }
        .auto-style4 {
            float: left;
            height: 27px;
        }
        .auto-style5 {
             width: 265px;
             height: 23px;
         }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            height: 27px;
            width: 316px;
        }
         .auto-style8 {
             height: 27px;
             width: 265px;
         }
        
    .auto-style7 {
        height: 27px;
        width: 316px;
        border-radius: 5px;
    }
    .auto-style8 {
        height: 27px;
        width: 265px;
        border-radius: 5px;
    }
    .auto-style7:hover,
.auto-style8:hover {
    background-color: #FFA07A; /* Change the color to your desired hover color */
}

</style>

    
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
                        <li class="active"><a href="starting.aspx">Sign in</a></li>
                        <li><a href="CustomerStartingPage.aspx">Customer Shoping</a></li>
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
        
        <div class="center-page" >
                                                       
                    
                        <h2><asp:Label ID="Label1" runat="server" Text="ADMIN LOGIN"></asp:Label></h2>
                    
                   
                    <asp:DropDownList ID="usertype" runat="server">
                        <asp:ListItem>Please Select any one</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Accountent</asp:ListItem>
                        <asp:ListItem>Delivery Partner</asp:ListItem>
                        <asp:ListItem>Doctor</asp:ListItem>
                        <asp:ListItem>Sellar</asp:ListItem>
                        <asp:ListItem>Distributer</asp:ListItem>
                        <asp:ListItem>Customer Care</asp:ListItem>
                        <asp:ListItem>Maintainer</asp:ListItem>
                        <asp:ListItem>Electrician</asp:ListItem>
                    </asp:DropDownList>
                   
         
                        <asp:TextBox ID="userid" runat="server" Width="297px"  CssClass="form-control" placeholder="Enter Your Name"></asp:TextBox>
                        <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="userid" ErrorMessage="user name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                                                                  
                        <asp:TextBox ID="pass" runat="server" TextMode="Password" Width="298px"  CssClass="form-control" placeholder="Enter Your Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="user name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                            
            <br />
       
                        <asp:Button cssclass= "btn-success" ID="login" runat="server"  BorderStyle="Ridge" BorderWidth="1px"  OnClick="login_Click" TabIndex="1" Text="LOGIN" />
            <asp:HyperLink ID="forgotpass" runat="server">Forgot Password</asp:HyperLink>
                    
            <br />
       </div>
    </form>
</body>
</html>
