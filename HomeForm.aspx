<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HomeForm.aspx.cs" Inherits="Event_Booking.HomeForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/10e4c540-3a7f-4bda-a81b-50626f1ff9f7');
            background-repeat: no-repeat;
            background-size: 106%;
        }
    </style>
    <asp:Table ID="tableContainer" runat="server" CssClass="navbar-header" Height="506px" Width="1438px" Style="padding: 20px; margin-top: 20px; position: relative; top: 1.5in; left: -1in;">
        <asp:TableHeaderRow VerticalAlign="Top">
            <asp:TableCell>
                <asp:Label ID="heading" runat="server" Text="MOVIE BOOKING!" Font-Bold="true" Font-Size="3em" Font-Names="Revans" ForeColor="#FF5733"></asp:Label><br /><br />
                <asp:Label ID="Label1" runat="server" Text="🎬 Welcome to our theater booking platform! 🍿" Font-Bold="true" Font-Size="Medium"></asp:Label><br /><br />
                <asp:Label ID="Label2" runat="server" Text="🎭 Discover a world of cinematic wonders at your fingertips. 🌟" Font-Bold="true"></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text="🌠 Choose your favorite films and secure your seats for a memorable movie experience. 🎫" Font-Bold="true"></asp:Label><br /><br /><br />
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" BorderColor="#FF5733" BorderStyle="Solid" BackColor="#BADED0" Font-Bold="true"/>&nbsp;&nbsp;
                <asp:Button ID="btnMoveBooking" runat="server" Text="Move Booking" OnClick="btnMoveBooking_Click" BorderColor="#FF5733" BorderStyle="Solid" BackColor="#BADED0" Font-Bold="true" />&nbsp;&nbsp;
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" BorderColor="#FF5733" BorderStyle="Solid" BackColor="#BADED0" Font-Bold="true" />
            </asp:TableCell>
        </asp:TableHeaderRow>
    </asp:Table>
</asp:Content>
