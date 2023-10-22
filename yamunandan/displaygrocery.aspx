<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displaygrocery.aspx.cs" Inherits="yamunandan.displaygrocery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <label class="col-xs-11">Updated by:</label>
            <div class="col-xs-11">
                <asp:TextBox ID="username" runat="server" CssClass="form-control" placeholder="Enter created by user name" ReadOnly="True"></asp:TextBox>
             </div>

            
           <label class="col-xs-11">Product Details Id:</label>
<div class="col-xs-11">
    <asp:DropDownList ID="productdetails" runat="server" OnSelectedIndexChanged="productdetails_SelectedIndexChanged" AutoPostBack="True">
        
    </asp:DropDownList>
</div>

<label class="col-xs-11">Color:</label>
<div class="col-xs-11">
    <asp:TextBox ID="color" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<label class="col-xs-11">Size Type:</label>
<div class="col-xs-11">
    <asp:TextBox ID="sizeType" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<label class="col-xs-11">Size Type Label:</label>
<div class="col-xs-11">
    <asp:TextBox ID="sizeTypeLabel" runat="server" CssClass="form-control"></asp:TextBox>
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
    <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click" CssClass="btn btn-primary" />
    <asp:Button ID="back" runat="server" Text="Back" CssClass="btn btn-primary" OnClick="back_Click" />
</div>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="productdetailsid">
    <Columns>
        <asp:BoundField DataField="productdetailsid" HeaderText="productdetailsid" InsertVisible="False" ReadOnly="True" SortExpression="productdetailsid" />
        <asp:BoundField DataField="color" HeaderText="color" SortExpression="color" />
        <asp:BoundField DataField="sizetype" HeaderText="sizetype" SortExpression="sizetype" />
        <asp:BoundField DataField="sizetypebylebel" HeaderText="sizetypebylebel" SortExpression="sizetypebylebel" />
        <asp:BoundField DataField="sizetypevalue" HeaderText="sizetypevalue" SortExpression="sizetypevalue" />
        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
        <asp:BoundField DataField="unitprice" HeaderText="unitprice" SortExpression="unitprice" />
        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        <asp:BoundField DataField="barcode" HeaderText="barcode" SortExpression="barcode" />
        <asp:BoundField DataField="grocerytype" HeaderText="grocerytype" SortExpression="grocerytype" />
        <asp:BoundField DataField="mfgdate" HeaderText="mfgdate" SortExpression="mfgdate" />
        <asp:BoundField DataField="expdate" HeaderText="expdate" SortExpression="expdate" />
        <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
        
                     <asp:TemplateField HeaderText="Grocery Picture"  SortExpression="Uploaded Transaction Photo">
                    <ItemTemplate>
                            <img src="product/<%#Eval("photo") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>
        <asp:BoundField DataField="about" HeaderText="about" SortExpression="about" />
        <asp:BoundField DataField="createdbyuser" HeaderText="createdbyuser" SortExpression="createdbyuser" />
        <asp:BoundField DataField="updatedbyuser" HeaderText="updatedbyuser" SortExpression="updatedbyuser" />
        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
    </Columns>
</asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [GroceryTable]"></asp:SqlDataSource>
            
</asp:Content>
