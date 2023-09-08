<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="Event_Booking.PaymentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #CCF4E5;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <asp:Table ID="PaymentPage1" runat="server" Height="549px" Width="499px" BackImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/01230161-2fb6-4f06-ba79-c810627666f7">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="left" BorderColor="#123030" BorderStyle="Solid">
                <asp:DropDownList ID="SelectPayment" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectPayment_SelectedIndexChanged" style="margin-left: 20px;" Font-Bold="true">
                    <asp:ListItem Text="Select Payment Method" Value="Select"></asp:ListItem>
                    <asp:ListItem Text="UPI Payment" Value="UPI"></asp:ListItem>
                    <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="UPIPaymentRow" runat="server" Visible="false" HorizontalAlign="Center" Height="510px" Width="535px" class="jumbotron" BackColor="#566F73">
            <asp:TableCell>
                <h3 style="color: #000000; background-color: #e8e8e8; font-weight: bold; font-size: 16px;">UPI Payment - Fill this</h3>
                <asp:Table ID="CardTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblUPIID" runat="server" Font-Bold="true" ForeColor="white" Text="UPI ID:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtUPIID" BorderColor="#000000" runat="server" Text="" ForeColor="#123030" Placeholder="Enter your UPI"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblContact" runat="server" Font-Bold="true" ForeColor="white" Text="Contact:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtContact" BorderColor="#000000" runat="server" Text="" Placeholder="Enter Your Number"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCustomer" runat="server" Text=""></asp:Label>
                            <asp:Button ID="MakePaymentButton" runat="server" Font-Bold="true" Text="Make Payment" BackColor="#66ff66" OnClick="MakePaymentButton_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow ID="CardRow" runat="server" Visible="false" HorizontalAlign="Center" Height="510px" Width="535px" class="jumbotron" BackColor="#566F73">
            <asp:TableCell>
                <h3 style="color: #000000; background-color: #e8e8e8; font-weight: bold; font-size: 16px;">Card Details - (All Debit/Credits Card Accepted)</h3>
                <asp:Table ID="OnlinePaymentTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCardHolderName" runat="server" Font-Bold="true" ForeColor="white" Text="Card Holder Name:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCardHolderName" BorderColor="#000000" runat="server" Text="" ForeColor="#123030" Placeholder="Enter Card Holder Name"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCardNumber" runat="server" Font-Bold="true" ForeColor="white" Text="Card Number:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCardNumber" BorderColor="#000000" runat="server" Text="" ForeColor="#123030" Placeholder="Enter Card Number"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblExpryDate" runat="server" Font-Bold="true" ForeColor="white" Text="Expiry Date:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtExpryDate" BorderColor="#000000" runat="server" Text="" ForeColor="#123030" Placeholder="Enter Expry Date"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblCcvCode" runat="server" Font-Bold="true" ForeColor="white" Text="CCV Code:"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox ID="txtCcvCode" BorderColor="#000000" runat="server" Text="" ForeColor="#123030" Placeholder="Enter Ccv Code"></asp:TextBox>
                            <asp:Image ID="Secureimg" runat="server" ImageUrl="http://www.pngall.com/wp-content/uploads/2/SSL-PNG-Free-Image.png" Width="20px" Height="20px" />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="lblYourname" runat="server" Text=""></asp:Label>
                            <asp:Button ID="PayNowButton" runat="server" Text="Pay Now" Font-Bold="true" BackColor="#66ff66" OnClick="PayNowButton_Click" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="Messagecustomer" runat="server" Text="After the payment you will get your Tickes Here!" Font-Bold="true"></asp:Label>
</asp:Content>