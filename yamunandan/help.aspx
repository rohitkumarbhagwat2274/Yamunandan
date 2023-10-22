<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="yamunandan.help" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Help</title>
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
                       
                        <li><a href="#">About</a></li>                        
                        <li class="active"><a href="commonhelp.aspx">Help Line</a></li>
                        
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
        
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
         <!-- Help section start -->

        <div class="center">
        <h1><asp:Label ID="welcome" runat="server" Text="Welcome to Help Section" Font-Bold="True" Font-Italic="True" BackColor="#FF99FF"></asp:Label></h1>
     
        
           <h3> <asp:Label ID="question" runat="server" Text="How can i Help you as a helper?"></asp:Label>&nbsp;
           
            <asp:DropDownList ID="select" runat="server" AutoPostBack="True" OnSelectedIndexChanged="select_SelectedIndexChanged">
               
            </asp:DropDownList>
            </h3>
           
            <br />
            <br />
            <h3>Contact Details:</h3>
            <asp:Label ID="phone" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="OR" runat="server"></asp:Label>
            <br />
            <asp:Label ID="emailid" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Or1" runat="server"></asp:Label>
            <br />
            <asp:Label ID="twitter" runat="server" Text=""></asp:Label>
        </div>
            </div>
    </form>
</body>
</html>
