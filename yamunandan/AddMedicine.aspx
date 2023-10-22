<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMedicine.aspx.cs" Inherits="yamunandan.AddMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<table class="auto-style1">
                <tr>
                    <td class="auto-style3" style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="49px" ImageUrl="~/images/logo.jpg" Width="71px" />
                    </td>
                    <td class="auto-style8" style="text-align: center">&nbsp;</td>
                    <td class="auto-style7" style="text-align: center">
                        <br />
                        <asp:Image ID="Image1" runat="server" Height="72px" ImageUrl="~/images/medicine.jpg" />
                        <br />
                        <h2>Add Medicine</h2>
                    </td>
                    <td class="auto-style9" style="text-align: center">&nbsp;</td>
                    <td class="auto-style4" style="text-align: center">&nbsp;</td>
                </tr>
            </table>
            <br />
            <table class="auto-style1" style="background-color: #00FFFF">
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label1" runat="server" Text="Updated By :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="updatedby" runat="server" ReadOnly="True" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label16" runat="server" Text="Medicine Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="name" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label14" runat="server" Text="Power"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="power" runat="server" placeholder="For example 10 mg ,20 mg,100 mg,300 mg etc" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label2" runat="server" Text="Quantity :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="quantity" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label3" runat="server" Text="Expry Date :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="expdate" runat="server" CssClass="auto-style11" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27" style="text-align: right">
                        <asp:Label ID="Label17" runat="server" Text="Manufacturing Date :"></asp:Label>
                    </td>
                    <td class="auto-style28">
                        <asp:TextBox ID="mfgdate" runat="server" CssClass="auto-style11" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label4" runat="server" Text="Company Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="company" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label5" runat="server" Text="Batch Number :"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="batch" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label6" runat="server" Text="Product Type :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="prodtype" runat="server" Height="18px" Width="186px">
                            <asp:ListItem>Tablet</asp:ListItem>
                            <asp:ListItem>Capsules</asp:ListItem>
                            <asp:ListItem>Sirup</asp:ListItem>
                            <asp:ListItem>Injections</asp:ListItem>
                            <asp:ListItem>Water</asp:ListItem>
                            <asp:ListItem>Proteen</asp:ListItem>
                            <asp:ListItem>Drops</asp:ListItem>
                            <asp:ListItem>Inhalers</asp:ListItem>
                            <asp:ListItem>Spray</asp:ListItem>
                            <asp:ListItem>Cream</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label7" runat="server" Text="Medicine Type :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="medicinetype" runat="server" Height="16px" Width="184px">
                            <asp:ListItem>Homeopathy</asp:ListItem>
                            <asp:ListItem>Allopathy</asp:ListItem>
                            <asp:ListItem>Ayurved</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label12" runat="server" Text="Colour Type :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="color" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label13" runat="server" Text="Consume Type :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="consume" runat="server" placeholder="Like Oral" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label8" runat="server" Text="Discribe About Medicines :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="discribe" runat="server" Height="70px" TextMode="MultiLine" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label9" runat="server" Text="Upload Photos :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:FileUpload ID="FileUpload1" runat="server" Style="background-image: url('http://localhost:17990/images/img_new.png');" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label10" runat="server" Text="Price of the Product :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="rs" runat="server" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label11" runat="server" Text="Composition of the Product :"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="composition" runat="server" Height="70px" TextMode="MultiLine" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Label ID="Label15" runat="server" Text="Side Effect"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="effect" runat="server" Height="61px" TextMode="MultiLine" Width="359px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">
                        <asp:Button ID="back" runat="server" BorderWidth="2px" OnClick="back_Click" Text="Back" Width="228px" />
                    </td>
                    <td class="auto-style29">
                        <asp:Button ID="add" runat="server" BorderWidth="2px" CssClass="auto-style3" OnClick="add_Click" Text="Add Product" />
                        <asp:Button ID="add0" runat="server" BorderWidth="2px" CssClass="auto-style3" OnClick="update_Click" Text="Update Medicine" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style26" style="text-align: right">&nbsp;</td>
                    <td class="auto-style29">&nbsp;</td>
                </tr>
            </table>
        
</asp:Content>
