<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketsSummary.aspx.cs" Inherits="Event_Booking.TicketsSummary" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Table ID="SummaryTickets" runat="server" Height="700px" Width="500px" style="margin-right: 0px" HorizontalAlign="Center">
    <asp:TableRow>
      <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle">
          <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Medium" Font-Names="visage" Text="Hello User!" ForeColor="Black"></asp:Label>&nbsp;&nbsp;
           <asp:Label ID="USName" runat="server" Font-Bold="true" Font-Size="Medium" Font-Names="visage" ForeColor="#FF4527"></asp:Label>
        <asp:Image ID="centerImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/e0695bb8-6e0a-4a49-ac8b-19e0ea9b63f2" Width="500px" Height="700px" />
      </asp:TableCell>
    </asp:TableRow>
  </asp:Table>
</asp:Content>