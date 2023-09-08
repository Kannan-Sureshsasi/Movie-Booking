<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Event_Booking.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/d67577b6-a50f-4344-80c1-fd985a03c7c4');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <asp:Table ID="LoginTable" runat="server" HorizontalAlign="Center" Height="420px" Width="535px" class="jumbotron" BackColor="#566F73">
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                <asp:Label ID="LoginHeading" runat="server" Text="Login Here!" Font-Bold="true" Font-Size="X-Large" Font-Names="Roboto Slab" ForeColor="White" Style="margin-left: 20px;"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblUsername" runat="server" Text="Username" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtUsername" runat="server" Text="" BorderStyle="Solid" BorderColor="#20CD8D" Placeholder="Enter your username"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtPassword" runat="server" Text="" BorderStyle="Solid" BorderColor="#20CD8D" TextMode="Password" Placeholder="Enter your Password"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:HyperLink runat="server" ID="ForgotPassword" Text="Forgot Password?" NavigateUrl="~/PasswordReset.aspx" ForeColor="White"></asp:HyperLink>&nbsp;&nbsp;
                <asp:Button ID="BtnLogin" runat="server" CssClass="Login" Text="Login" OnClick="BtnLogin_Click" Font-Bold="true" BorderStyle="Solid" BorderColor="#20CD8D"/>
                 &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink runat="server" Text="Don't have an account?" NavigateUrl="~/Default.aspx" ForeColor="White"></asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>