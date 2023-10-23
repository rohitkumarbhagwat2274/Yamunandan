<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutCustomerSellermedicine.aspx.cs" Inherits="yamunandan.AboutCustomerSellermedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center"><h1> About Customer Seller Medicine Product's</h1></div>
    <asp:Label ID="Electronic" runat="server" Text="Medicine" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <br />
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="sellerusername" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="sellerusername" HeaderText="sellerusername" ReadOnly="True" SortExpression="sellerusername" />
            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
            <asp:BoundField DataField="brandname" HeaderText="brandname" SortExpression="brandname" />
            <asp:BoundField DataField="productType" HeaderText="productType" SortExpression="productType" />
            <asp:BoundField DataField="productcolor" HeaderText="productcolor" SortExpression="productcolor" />
            <asp:BoundField DataField="batchid" HeaderText="batchid" SortExpression="batchid" />
            <asp:BoundField DataField="exp" HeaderText="exp" SortExpression="exp" />
            <asp:BoundField DataField="mfg" HeaderText="mfg" SortExpression="mfg" />
            <asp:BoundField DataField="defected" HeaderText="defected" SortExpression="defected" />
            <asp:BoundField DataField="mrp" HeaderText="mrp" SortExpression="mrp" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="frontpic" HeaderText="frontpic" SortExpression="frontpic" />

             <asp:TemplateField HeaderText="Front Picture" SortExpression="Front Picture of Customer Seller Product">
                    <ItemTemplate>
                            <img src="sellerproductimg/<%#Eval("frontpic") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>

            <asp:BoundField DataField="backpic" HeaderText="backpic" SortExpression="backpic" />

             <asp:TemplateField HeaderText="Product's Back Picture" SortExpression="Back Picture of Customer Seller Product">
                    <ItemTemplate>
                            <img src="sellerproductimg/<%#Eval("backpic") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>

        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [sellproductTable] WHERE [sellerusername] = @sellerusername" InsertCommand="INSERT INTO [sellproductTable] ([sellerusername], [productname], [brandname], [productType], [productcolor], [batchid], [exp], [mfg], [defected], [mrp], [quantity], [frontpic], [backpic]) VALUES (@sellerusername, @productname, @brandname, @productType, @productcolor, @batchid, @exp, @mfg, @defected, @mrp, @quantity, @frontpic, @backpic)" SelectCommand="SELECT * FROM [sellproductTable]" UpdateCommand="UPDATE [sellproductTable] SET [sellproductid] = @sellproductid, [productname] = @productname, [brandname] = @brandname, [productType] = @productType, [productcolor] = @productcolor, [batchid] = @batchid, [exp] = @exp, [mfg] = @mfg, [defected] = @defected, [mrp] = @mrp, [quantity] = @quantity, [frontpic] = @frontpic, [backpic] = @backpic WHERE [sellerusername] = @sellerusername">
        <DeleteParameters>
            <asp:Parameter Name="sellerusername" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sellerusername" Type="String" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="brandname" Type="String" />
            <asp:Parameter Name="productType" Type="String" />
            <asp:Parameter Name="productcolor" Type="String" />
            <asp:Parameter Name="batchid" Type="String" />
            <asp:Parameter DbType="Date" Name="exp" />
            <asp:Parameter DbType="Date" Name="mfg" />
            <asp:Parameter Name="defected" Type="String" />
            <asp:Parameter Name="mrp" Type="Double" />
            <asp:Parameter Name="quantity" Type="Int64" />
            <asp:Parameter Name="frontpic" Type="String" />
            <asp:Parameter Name="backpic" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="sellproductid" Type="Int32" />
            <asp:Parameter Name="productname" Type="String" />
            <asp:Parameter Name="brandname" Type="String" />
            <asp:Parameter Name="productType" Type="String" />
            <asp:Parameter Name="productcolor" Type="String" />
            <asp:Parameter Name="batchid" Type="String" />
            <asp:Parameter DbType="Date" Name="exp" />
            <asp:Parameter DbType="Date" Name="mfg" />
            <asp:Parameter Name="defected" Type="String" />
            <asp:Parameter Name="mrp" Type="Double" />
            <asp:Parameter Name="quantity" Type="Int64" />
            <asp:Parameter Name="frontpic" Type="String" />
            <asp:Parameter Name="backpic" Type="String" />
            <asp:Parameter Name="sellerusername" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
