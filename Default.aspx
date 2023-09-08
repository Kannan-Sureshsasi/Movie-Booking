<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Event_Booking._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

     <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/d67577b6-a50f-4344-80c1-fd985a03c7c4');
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <asp:Table ID="registrationTable" runat="server" HorizontalAlign="Center" Height="420px" Width="535px" class="jumbotron" BackColor="#566F73" style="margin: 0 auto;">
    <asp:TableRow>
        <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
            <asp:Label ID="Heading" runat="server" Text="Register Here!" Font-Bold="true" Font-Size="X-Large" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblFullName" runat="server" Text="Full Name" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="txtFullName" runat="server" Text="" BorderStyle="Solid" BorderColor="#20CD8D" Placeholder="Enter Your Name Here"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblEmail" runat="server" Text="Your Email" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>&nbsp;&nbsp;
                <asp:TextBox ID="txtEmail" runat="server" BorderStyle="Solid" BorderColor="#20CD8D" Placeholder="Enter Email Here"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center">
                <asp:Label ID="lblPassword" runat="server" Text="Password" Font-Names="Roboto Slab" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtPassword" runat="server" BorderStyle="Solid" BorderColor="#20CD8D" Placeholder="Enter Password Here"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Button ID="BtnRegister" runat="server" CssClass="register" Text="Register" OnClick="BtnRegister_Click" Font-Bold="true" BorderStyle="Solid" BorderColor="#20CD8D" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink runat="server" Text="Already have an account?" NavigateUrl="LoginPage.aspx" ForeColor="White"></asp:HyperLink>
            </asp:TableCell>
        </asp:TableRow>
</asp:Table>
    <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="error-message" Visible="false" ForeColor="Red" Font-Bold="true" />
</asp:Content>