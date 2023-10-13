<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="updateEmployee.aspx.cs" Inherits="yamunandan.updateEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
            <asp:BoundField DataField="createdbyusername" HeaderText="createdbyusername" SortExpression="createdbyusername" />
            <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="phno" HeaderText="phno" SortExpression="phno" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="govid" HeaderText="govid" SortExpression="govid" />
            <asp:BoundField DataField="govidproof" HeaderText="govidproof" SortExpression="govidproof" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="photo" HeaderText="photo" SortExpression="photo" />
            <asp:BoundField DataField="pay" HeaderText="pay" SortExpression="pay" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [employeedetails] WHERE [employeeid] = @employeeid" InsertCommand="INSERT INTO [employeedetails] ([employeeid], [createdbyusername], [usertype], [username], [pass], [email], [phno], [name], [govid], [govidproof], [gender], [photo], [pay]) VALUES (@employeeid, @createdbyusername, @usertype, @username, @pass, @email, @phno, @name, @govid, @govidproof, @gender, @photo, @pay)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [employeedetails]" UpdateCommand="UPDATE [employeedetails] SET [createdbyusername] = @createdbyusername, [usertype] = @usertype, [username] = @username, [pass] = @pass, [email] = @email, [phno] = @phno, [name] = @name, [govid] = @govid, [govidproof] = @govidproof, [gender] = @gender, [photo] = @photo, [pay] = @pay WHERE [employeeid] = @employeeid">
        <DeleteParameters>
            <asp:Parameter Name="employeeid" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="employeeid" Type="String" />
            <asp:Parameter Name="createdbyusername" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phno" Type="Int64" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="govid" Type="String" />
            <asp:Parameter Name="govidproof" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="pay" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="createdbyusername" Type="String" />
            <asp:Parameter Name="usertype" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="pass" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="phno" Type="Int64" />
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="govid" Type="String" />
            <asp:Parameter Name="govidproof" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="photo" Type="String" />
            <asp:Parameter Name="pay" Type="Double" />
            <asp:Parameter Name="employeeid" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Button ID="Button1" cssclass="btn-success" runat="server" Text="Button" OnClick="Button1_Click" />
</asp:Content>
