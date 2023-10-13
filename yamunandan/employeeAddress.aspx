<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="employeeAddress.aspx.cs" Inherits="yamunandan.employeeAddress" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
      
        
        <div class="center"><h1>            <asp:Label ID="Label1" runat="server" Text="O-----------" ForeColor="#009900"></asp:Label><asp:Label ID="Label2" runat="server" Text="O---------O" ForeColor="#009900"></asp:Label></h1></div>
        <h1></h1>
        <h1></h1>
        

        <!--Address page-->
        <div class="center-page">
            
            
            <label class="col-xs-11"> </label>
            
            <div class="col-xs-11">
                <h1></h1>
            <asp:TextBox ID="empid" runat="server" CssClass="form-control" placeholder="Enter Employee Id"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Address Type:</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="addtype" runat="server">
                    <asp:ListItem>Residential</asp:ListItem>
                    <asp:ListItem>Parmanent</asp:ListItem>
                </asp:DropDownList>
             </div>

            <label class="col-xs-11"> House No / Name:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="home" runat="server" CssClass="form-control" placeholder="Enter House No., Building Name"></asp:TextBox>
             </div>

            

            <label class="col-xs-11"> Post Office:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="po" runat="server" CssClass="form-control" placeholder="Enter Post Office"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Police Station:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="ps" runat="server" CssClass="form-control" placeholder="Enter Posice Station"></asp:TextBox>
             </div>

            <label class="col-xs-11"> District:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="dist" runat="server" CssClass="form-control" placeholder="Enter District"></asp:TextBox>
             </div>

            <label class="col-xs-11"> State:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="state" runat="server" CssClass="form-control" placeholder="Enter State"></asp:TextBox>
             </div>
            <label class="col-xs-11"> City:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="city" runat="server" CssClass="form-control" placeholder="Enter City"></asp:TextBox>
             </div>

            <label class="col-xs-11"> PinCord:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="pin" runat="server" CssClass="form-control" placeholder="Enter District Pincode"></asp:TextBox>
             </div>

            <label class="col-xs-11"> Status :</label>
            <div class="col-xs-11">
                <asp:DropDownList ID="status" runat="server">
                    <asp:ListItem>Show</asp:ListItem>
                    <asp:ListItem>Hide</asp:ListItem>
                </asp:DropDownList>
             </div>


            <label class="col-xs-11"> Address Proof:</label>
            <div class="col-xs-11">
            <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
             </div>

            <div class="col-xs-11">
                <asp:Button ID="back" CssClass="btn-success" runat="server" Text="back" OnClick="back_Click"  />
                <asp:Button ID="btnsave" runat="server" cssClass="btn-success"   Text="SAVE" />
                    <asp:Button ID="update" runat="server" CssClass="btn-success"  Text="Update" OnClick="update_Click" />
             </div>
        </div>




        <!--Address page end-->
    </p>
</asp:Content>
