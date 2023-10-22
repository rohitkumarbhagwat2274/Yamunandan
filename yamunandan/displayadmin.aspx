<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="displayadmin.aspx.cs" Inherits="yamunandan.displayadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    <table class="auto-style1" style="background-color: #00FFFF">
            <tr>
                <td style="text-align: center; background-color: #FFFFFF;" class="auto-style2">
                    </td>
            </tr>
        </table>
        <div style="text-align: center">
            <h1>Update Admin</h1></div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="userid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="userid" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="userid" />
                    <asp:BoundField DataField="usertype" HeaderText="User Type" SortExpression="usertype" ReadOnly="True" />
                    <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" ReadOnly="True"/>
                    <asp:BoundField DataField="pass" HeaderText="Password" SortExpression="pass" ReadOnly="True" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="phno" HeaderText="Phone Number" SortExpression="phno" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />

                    <asp:TemplateField HeaderText="Government Id Proof">
                    <ItemTemplate>
                            <img src="userpic/<%#Eval("govid") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>

                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />

                    <asp:TemplateField HeaderText="Profile Photo">
                    <ItemTemplate>
                            <img src="userpic/<%#Eval("photo") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>

                    <asp:BoundField DataField="pay" HeaderText="Monthly Selary" SortExpression="pay" ReadOnly="True" />
                    <asp:BoundField DataField="home" HeaderText="Home" SortExpression="home" />
                    <asp:BoundField DataField="po" HeaderText="Post Office" SortExpression="po" />
                    <asp:BoundField DataField="ps" HeaderText="Police Station" SortExpression="ps" />
                    <asp:BoundField DataField="dist" HeaderText="District" SortExpression="dist" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="pin" HeaderText="PinCode" SortExpression="pin" />

                    <asp:TemplateField HeaderText="Address Proof">
                    <ItemTemplate>
                            <img src="userpic/<%#Eval("addpro") %>" style="width:150px;height:150px" />
                        </ItemTemplate>
                     </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [userdetails] WHERE [userid] = @userid" InsertCommand="INSERT INTO [userdetails] ([usertype], [username], [pass], [email], [phno], [name], [govid], [gender], [photo], [pay], [home], [po], [ps], [dist], [state], [city], [pin], [addpro]) VALUES (@usertype, @username, @pass, @email, @phno, @name, @govid, @gender, @photo, @pay, @home, @po, @ps, @dist, @state, @city, @pin, @addpro)" SelectCommand="SELECT * FROM [userdetails]" UpdateCommand="UPDATE [userdetails] SET [usertype] = @usertype, [username] = @username, [pass] = @pass, [email] = @email, [phno] = @phno, [name] = @name, [govid] = @govid, [gender] = @gender, [photo] = @photo, [pay] = @pay, [home] = @home, [po] = @po, [ps] = @ps, [dist] = @dist, [state] = @state, [city] = @city, [pin] = @pin, [addpro] = @addpro WHERE [userid] = @userid">
                <DeleteParameters>
                    <asp:Parameter Name="userid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="usertype" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phno" Type="Int64" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="govid" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="pay" Type="Double" />
                    <asp:Parameter Name="home" Type="String" />
                    <asp:Parameter Name="po" Type="String" />
                    <asp:Parameter Name="ps" Type="String" />
                    <asp:Parameter Name="dist" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="pin" Type="Int32" />
                    <asp:Parameter Name="addpro" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="usertype" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phno" Type="Int64" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="govid" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="photo" Type="String" />
                    <asp:Parameter Name="pay" Type="Double" />
                    <asp:Parameter Name="home" Type="String" />
                    <asp:Parameter Name="po" Type="String" />
                    <asp:Parameter Name="ps" Type="String" />
                    <asp:Parameter Name="dist" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="pin" Type="Int32" />
                    <asp:Parameter Name="addpro" Type="String" />
                    <asp:Parameter Name="userid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Back" />
        </div></p>
</asp:Content>
