<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatepickupaddress.aspx.cs" Inherits="yamunandan.updatepickupaddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Update Pickup table</title>
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
       
        <!--Update code start -->

         <asp:Image ID="Image1" runat="server" ImageUrl="~/images/line.png" />
        <h1> Update Your Pickup Address </h1>
        <div class="center-page">
            <div class="form-group">
                <label class="col-xs-11">User Name:</label>
                <div class="col-xs-11">
                    <asp:TextBox ID="username" runat="server" CssClass="form-control" Text='<%# Session["username"] %>' ReadOnly="True"></asp:TextBox>
                </div>
            </div>
        
        <div class="center-page">
            <div class="form-group">
                <label class="col-xs-11">Data:</label>
                <div class="col-xs-11">
                    <asp:Label ID="Label1" runat="server" Text="Check"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="pickupid" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="pickupid" HeaderText="pickupid" InsertVisible="False" ReadOnly="True" SortExpression="pickupid" />
                            <asp:BoundField DataField="sellerusername" HeaderText="sellerusername" SortExpression="sellerusername" />
                            <asp:BoundField DataField="fullAddress" HeaderText="fullAddress" SortExpression="fullAddress" />
                            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
                            <asp:BoundField DataField="Phno" HeaderText="Phno" SortExpression="Phno" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [sellerpickupAddressTable] WHERE [pickupid] = @pickupid" InsertCommand="INSERT INTO [sellerpickupAddressTable] ([sellerusername], [fullAddress], [pincode], [Phno]) VALUES (@sellerusername, @fullAddress, @pincode, @Phno)" SelectCommand="SELECT * FROM [sellerpickupAddressTable]" UpdateCommand="UPDATE [sellerpickupAddressTable] SET [sellerusername] = @sellerusername, [fullAddress] = @fullAddress, [pincode] = @pincode, [Phno] = @Phno WHERE [pickupid] = @pickupid">
                        <DeleteParameters>
                            <asp:Parameter Name="pickupid" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="sellerusername" Type="String" />
                            <asp:Parameter Name="fullAddress" Type="String" />
                            <asp:Parameter Name="pincode" Type="Int32" />
                            <asp:Parameter Name="Phno" Type="Int64" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="sellerusername" Type="String" />
                            <asp:Parameter Name="fullAddress" Type="String" />
                            <asp:Parameter Name="pincode" Type="Int32" />
                            <asp:Parameter Name="Phno" Type="Int64" />
                            <asp:Parameter Name="pickupid" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        <!--Update code end -->

    </form>
</body>
</html>
