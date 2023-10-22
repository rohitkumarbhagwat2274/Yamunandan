<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updatemedicine.aspx.cs" Inherits="yamunandan.updatemedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="medicineid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="medicineid" HeaderText="medicineid" InsertVisible="False" ReadOnly="True" SortExpression="medicineid" />
                    <asp:BoundField DataField="updateby" HeaderText="Updated by Userid" SortExpression="updateby" ReadOnly="True"/>
                    <asp:BoundField DataField="name" HeaderText="Medicine Name" SortExpression="name" />
                    <asp:BoundField DataField="power" HeaderText="Power of the Medicine" SortExpression="power" />
                    <asp:BoundField DataField="quantity" HeaderText="Quantity of the product" SortExpression="quantity" />
                    <asp:BoundField DataField="exp" HeaderText="Expry Date" SortExpression="exp" />
                    <asp:BoundField DataField="mfgdate" HeaderText="Manufacturing Date" SortExpression="mfgdate" />
                    <asp:BoundField DataField="companyname" HeaderText="Company Name" SortExpression="companyname" ReadOnly="True"/>
                    <asp:BoundField DataField="batchno" HeaderText="Batch Number" SortExpression="batchno"  ReadOnly="True" />
                    <asp:BoundField DataField="protype" HeaderText="Product Type" SortExpression="protype" />
                    <asp:BoundField DataField="medicinetype" HeaderText="Medicine Type" SortExpression="medicinetype" />
                    <asp:BoundField DataField="color" HeaderText="Colour of the Medicine" SortExpression="color" />
                    <asp:BoundField DataField="consume" HeaderText="Consume" SortExpression="consume" />
                    <asp:BoundField DataField="about" HeaderText="About of the Medicine" SortExpression="about" />
                    

                    <asp:TemplateField HeaderText="Photo of Medicine" SortExpression="Photo of Medicine">
                    <ItemTemplate>
                            <img src="product/<%#Eval("photo") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>

                    <asp:BoundField DataField="rs" HeaderText="Per Streep Price" SortExpression="rs" />
                    <asp:BoundField DataField="composition" HeaderText="Composition of the Medicine" SortExpression="composition" />
                    <asp:BoundField DataField="side_effect" HeaderText="Side Effect of Medicine" SortExpression="side_effect" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [medicine] WHERE [medicineid] = @medicineid" InsertCommand="INSERT INTO [medicine] ([updateby], [name], [power], [quantity], [exp], [mfgdate], [companyname], [batchno], [protype], [medicinetype], [color], [consume], [about], [photo], [rs], [composition], [side_effect]) VALUES (@updateby, @name, @power, @quantity, @exp, @mfgdate, @companyname, @batchno, @protype, @medicinetype, @color, @consume, @about, @photo, @rs, @composition, @side_effect)" SelectCommand="SELECT * FROM [medicine]" UpdateCommand="UPDATE [medicine] SET [updateby] = @updateby, [name] = @name, [power] = @power, [quantity] = @quantity, [exp] = @exp, [mfgdate] = @mfgdate, [companyname] = @companyname, [batchno] = @batchno, [protype] = @protype, [medicinetype] = @medicinetype, [color] = @color, [consume] = @consume, [about] = @about, [photo] = @photo, [rs] = @rs, [composition] = @composition, [side_effect] = @side_effect WHERE [medicineid] = @medicineid">
                <DeleteParameters>
                    <asp:Parameter Name="medicineid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="updateby" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="power" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="exp" />
                    <asp:Parameter DbType="Date" Name="mfgdate" />
                    <asp:Parameter Name="companyname" Type="String" />
                    <asp:Parameter Name="batchno" Type="String" />
                    <asp:Parameter Name="protype" Type="String" />
                    <asp:Parameter Name="medicinetype" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="consume" Type="String" />
                    <asp:Parameter Name="about" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="rs" Type="Double" />
                    <asp:Parameter Name="composition" Type="String" />
                    <asp:Parameter Name="side_effect" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="updateby" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="power" Type="String" />
                    <asp:Parameter Name="quantity" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="exp" />
                    <asp:Parameter DbType="Date" Name="mfgdate" />
                    <asp:Parameter Name="companyname" Type="String" />
                    <asp:Parameter Name="batchno" Type="String" />
                    <asp:Parameter Name="protype" Type="String" />
                    <asp:Parameter Name="medicinetype" Type="String" />
                    <asp:Parameter Name="color" Type="String" />
                    <asp:Parameter Name="consume" Type="String" />
                    <asp:Parameter Name="about" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="rs" Type="Double" />
                    <asp:Parameter Name="composition" Type="String" />
                    <asp:Parameter Name="side_effect" Type="String" />
                    <asp:Parameter Name="medicineid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="back" runat="server" BackColor="#CC0000" BorderWidth="2px" OnClick="back_Click" Text="Back" Width="85px" />
</asp:Content>
