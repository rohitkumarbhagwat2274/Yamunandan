<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pharmacymanagement.aspx.cs" Inherits="yamunandan.pharmacymanagement" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
   <!-- Starting of the code -->

            <div class="container center ">
           <div class="row" >
               <div class="col-lg-4">
                   
                    <asp:ImageButton ID="addmedicine" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/medicine.jpg" OnClick="addmedicine_Click"   />
                   <h2>Add and update Medicine</h2>
                   
                   <p><a class="btn btn-default " href ="Addmedicine.aspx" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                     <asp:ImageButton ID="display" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/medicine.jpg" OnClick="display_Click"  />
                   <h2> Display Medicines</h2>                   
                   <p><a class="btn btn-default " href ="updatemedicine.aspx" role="button" > View More &raquo;</a></p>
               </div>
                <div class="col-lg-4">
                  <asp:ImageButton ID="feedback" runat="server" Width="169px" Height="140px" class="img-circle" ImageUrl="~/images/feedback.jpg"   />
                   <h2> Feedback</h2>                   
                   <p><a class="btn btn-default " href ="#" role="button" > View More &raquo;</a></p>
               </div>
               Show The data according to Name and Quantity
               <div class="col-lg-4" > 
                  
                   <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1">
                       <series>
                           <asp:Series ChartType="Pie" Name="Series1" XValueMember="name" YValueMembers="quantity">
                           </asp:Series>
                       </series>
                       <chartareas>
                           <asp:ChartArea Name="ChartArea1">
                           </asp:ChartArea>
                       </chartareas>
                   </asp:Chart>
                  
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [medicine]">
                    </asp:SqlDataSource>
                    <h2>Analyse</h2>
                                     
                  
               </div>
             <div class="col-lg-4">
                  
                   <h2> Go to Back</h2>                   
                   <p><a class="btn btn-default " href ="admindashboard.aspx" role="button" > Back &laquo;</a></p>
               </div>  
           </div>
       </div>
            
        

            <!-- end of the code --> </p>
</asp:Content>
