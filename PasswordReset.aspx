<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PasswordReset.aspx.cs" Inherits="Event_Booking.PasswordReset" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Username" runat="server" Text="User Name" Font-Bold="true" ></asp:Label>
    <asp:Label ID="Label1" runat="server" Width="26px" ></asp:Label>
    <asp:TextBox ID="txtFullName" runat="server" BorderStyle="Solid" Placeholder="Correct Username"></asp:TextBox><br />
    <asp:Label ID="lblNewpassword" runat="server" Text="New password" ForeColor="Black" Font-Bold="true"></asp:Label>&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" Text="" BorderStyle="Solid" Placeholder="Enter your Password"></asp:TextBox><br />
    <asp:Button ID="BtnResetPassword" runat="server" Text="Reset Password" BorderStyle="Solid" Font-Bold="true"  OnClick="BtnResetPassword_Click" Height="27px" Width="134px" />
   <asp:Button ID="Login" runat="server" Text="Lets Login" BorderStyle="Solid" Font-Bold="true"  OnClick="Login_Click" Height="26px" Width="86px" />
    <asp:Button ID="Clear" runat="server" Text="Erase" BorderStyle="Solid" Font-Bold="true"  OnClick="Clear_Click" Height="23px" Width="72px" />
    <br /><br />
    <asp:Label ID="ErrorMessagelbl" runat="server" Visible="false" ForeColor="Red" Font-Bold="true"></asp:Label>
    <asp:Label ID="SuccessMessagelbl" runat="server" Visible="false" ForeColor="#66ff33" Font-Bold="true"></asp:Label>
</asp:Content>