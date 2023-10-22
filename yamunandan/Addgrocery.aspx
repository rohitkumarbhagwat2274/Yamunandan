<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Addgrocery.aspx.cs" Inherits="yamunandan.Addgrocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <!--Add Grocery Start-->

        <div class="center-page">

            
            <label class="col-xs-11">Created by:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter created by user name" ReadOnly="True"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Colour :</label>
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

            <label class="col-xs-11"> Size Type:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="sizeType" runat="server" CssClass="form-control" placeholder="Enter Size Type Small,Medium,Large"></asp:TextBox>
             </div>

           <label class="col-xs-11"> Size Type Lebel:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="sizeTypeLabel" runat="server" CssClass="form-control" placeholder="Enter Size Lebel i.e.:X,M,XL,etc"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Size Value:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="sizevalue" runat="server" CssClass="form-control" placeholder="Enter Value size like 1 kg ,2kg,etc"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Gender:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="gender" runat="server" CssClass="form-control" placeholder="Enter who can use this product"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Per Unit Price:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="unitPrice" runat="server" CssClass="form-control" placeholder="Enter each price"></asp:TextBox>
             </div>

             <label class="col-xs-11"> Quantity:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="quantity" runat="server" CssClass="form-control" placeholder="Enter Your Quantity"></asp:TextBox>
                
             </div>

            <label class="col-xs-11"> BarCode:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="barcode" runat="server" CssClass="form-control" placeholder="Enter Product Barcode "></asp:TextBox>
             </div>


            <label class="col-xs-11"> Grocery Type:</label>
            <div class="col-xs-11">
            <asp:DropDownList ID="groceryType" runat="server" Height="17px" Width="178px">
                        <asp:ListItem>Baby Care</asp:ListItem>
                        <asp:ListItem>Chocolate</asp:ListItem>
                        <asp:ListItem>Clean</asp:ListItem>
                        <asp:ListItem>Coffee</asp:ListItem>
                        <asp:ListItem>Cosmetic</asp:ListItem>
                        <asp:ListItem>Detergent</asp:ListItem>
                        <asp:ListItem>DryFrout</asp:ListItem>
                        <asp:ListItem>Frout</asp:ListItem>
                        <asp:ListItem>Grains</asp:ListItem>
                        <asp:ListItem>Grooming</asp:ListItem>
                        <asp:ListItem>Home Kiction</asp:ListItem>
                        <asp:ListItem>Mouthwash</asp:ListItem>
                        <asp:ListItem>Pet Supplies</asp:ListItem>
                        <asp:ListItem>Protein</asp:ListItem>
                        <asp:ListItem>Room Fressner</asp:ListItem>
                        <asp:ListItem>Sexual Wellness</asp:ListItem>
                        <asp:ListItem>Shampoo</asp:ListItem>
                        <asp:ListItem>Show Polish</asp:ListItem>
                        <asp:ListItem>Show Polish Brush</asp:ListItem>
                        <asp:ListItem>Soap</asp:ListItem>
                        <asp:ListItem>Snack</asp:ListItem>
                        <asp:ListItem>Sweets</asp:ListItem>
                        <asp:ListItem>Tea</asp:ListItem>
                        <asp:ListItem>Toilet</asp:ListItem>
                        <asp:ListItem>Toothbrush</asp:ListItem>
                        <asp:ListItem>Toothpest</asp:ListItem>
                        <asp:ListItem>Vegitable</asp:ListItem>
                        <asp:ListItem>Toy</asp:ListItem>
                    </asp:DropDownList>
             </div>

            
            <label class="col-xs-11"> Manufacturing Date:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="mfg" runat="server" CssClass="form-control" placeholder="Enter manufacturing date"></asp:TextBox>
             </div>
            <label class="col-xs-11"> Expiry Date:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="exp" runat="server" CssClass="form-control" placeholder="Enter Expiry Date of the medicine"></asp:TextBox>
             </div>
            <label class="col-xs-11"> Upload Photo:</label>
            <div class="col-xs-11">
            <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
             </div>           
            <div class="col-xs-11">
                
            <asp:TextBox ID="about" runat="server" CssClass="form-control"  Width="308px" Height="52px" TextMode="MultiLine" placeholder="Enter About The product"></asp:TextBox>
             </div>
            
            <label class="col-xs-11"> Status:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="status" runat="server">
                    <asp:ListItem>Show</asp:ListItem>
                    <asp:ListItem>Hide</asp:ListItem>
                </asp:DropDownList>
             </div>

            <div class="col-xs-11">
                <asp:Button ID="add" runat="server" BackColor="#66FF33" BorderWidth="2px" Text="Add" Width="135px" OnClick="add_Click"  />
            </div>
           <div class="col-xs-11">
            <a class="btn btn-default " href ="admindashboard.aspx" role="button" > &laquo; Go Back &laquo;</a>
           </div>
            
            
        </div>




        <!--Add Grocery end-->
           
</asp:Content>
