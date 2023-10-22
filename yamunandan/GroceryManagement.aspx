<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GroceryManagement.aspx.cs" Inherits="yamunandan.GroceryManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>&nbsp; Grossary Management</h2>
                
            <!-- Starting of the code -->

            <div class="container center ">
           <div class="row" >
               <div class="col-lg-4">
                   
                    <asp:ImageButton ID="addgrossary" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/Grocery.jpg" OnClick="addgrossary_Click1"   />
                   <h2>Add&nbsp; Products</h2>
                   
                   <p><a class="btn btn-default " href ="Addgrocery.aspx" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                     <asp:ImageButton ID="display" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/Grocery.jpg" OnClick="display_Click"  />
                   <h2> Display and Update Products</h2>                   
                   <p><a class="btn btn-default " href ="displaygrocery.aspx" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                  <asp:ImageButton ID="ImageButton1" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/feedback.jpg" OnClick="ImageButton1_Click"   />
                   <h2> Feedback</h2>                   
                   <p><a class="btn btn-default " href ="#" role="button" > View More &raquo;</a></p>
               </div>
               
             <div class="col-lg-4">
                  
                   <h2> Go to Back</h2>                   
                   <p><a class="btn btn-default " href ="admindashboard.aspx" role="button" > Back &laquo;</a></p>
               </div>  
           </div>
       </div>
            </div>
        

            <!-- end of the code -->

</asp:Content>
