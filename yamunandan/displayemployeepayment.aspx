<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayemployeepayment.aspx.cs" Inherits="yamunandan.displayemployeepayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="payid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="payid" HeaderText="Payment id" InsertVisible="False" ReadOnly="True" SortExpression="payid" />
                    <asp:BoundField DataField="updatedbyuserid" HeaderText="Updated By Userid" SortExpression="updatedbyuserid"  />
                    <asp:BoundField DataField="userid" HeaderText="User id" SortExpression="userid" />
                    <asp:BoundField DataField="payamount" HeaderText="Payment Amount" SortExpression="payamount" />
                    <asp:BoundField DataField="paydate" HeaderText="Payment Date" SortExpression="paydate" />
                    <asp:BoundField DataField="trans_id" HeaderText="Transaction Number" SortExpression="trans_id" />
                   

                     <asp:TemplateField HeaderText="Uploaded Transaction Photo"  SortExpression="Uploaded Transaction Photo">
                    <ItemTemplate>
                            <img src="userpic/<%#Eval("transpic") %>" style="width:150px;height:150px" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [emppayment] WHERE [payid] = @payid" InsertCommand="INSERT INTO [emppayment] ([updatedbyuserid], [userid], [payamount], [paydate], [trans_id], [transpic]) VALUES (@updatedbyuserid, @userid, @payamount, @paydate, @trans_id, @transpic)" SelectCommand="SELECT * FROM [emppayment]" UpdateCommand="UPDATE [emppayment] SET [updatedbyuserid] = @updatedbyuserid, [userid] = @userid, [payamount] = @payamount, [paydate] = @paydate, [trans_id] = @trans_id, [transpic] = @transpic WHERE [payid] = @payid">
                <DeleteParameters>
                    <asp:Parameter Name="payid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="updatedbyuserid" Type="String" />
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="payamount" Type="Double" />
                    <asp:Parameter Name="paydate" Type="DateTime" />
                    <asp:Parameter Name="trans_id" Type="String" />
                    <asp:Parameter Name="transpic" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="updatedbyuserid" Type="String" />
                    <asp:Parameter Name="userid" Type="Int32" />
                    <asp:Parameter Name="payamount" Type="Double" />
                    <asp:Parameter Name="paydate" Type="DateTime" />
                    <asp:Parameter Name="trans_id" Type="String" />
                    <asp:Parameter Name="transpic" Type="String" />
                    <asp:Parameter Name="payid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="back" runat="server" OnClick="back_Click" Text="Back" />
        </div></p>
</asp:Content>
