<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Event_Booking.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #CCF4E5;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <div style="text-align: center;">
        <h2 style="color: #FF572B; font-size: 24px; font-weight: bold;"><%: Title %></h2>
        <h3 style="font-size: 18px;">Get in Touch</h3>
    </div>
    
    <div style="margin: 20px auto; max-width: 400px; text-align: center;">
        <div style="background-color: #F7F7F7; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);">
            <address style="font-size: 16px; text-align: center;">
                <p style="margin-bottom: 10px;">Visit us at:</p>
                <p>.Net Developers<br />
                Developing, WA 12345-67890</p>
                <p style="margin-top: 15px;"><abbr title="Phone" style="font-weight: bold;"></abbr> Thank You</p>
            </address>
        </div>
        
        <div style="margin-top: 20px;">
            <p style="font-weight: bold;">For assistance or inquiries:</p>
            <p style="margin-bottom: 5px;"><strong>Email Support:</strong></p>
            <p><a href="mailto:Support@example.com" style="color: #FF572B; text-decoration: none;">Support@example.com</a></p>
            
            <p style="margin-top: 10px; margin-bottom: 5px;"><strong>Email Marketing:</strong></p>
            <p><a href="mailto:Marketing@example.com" style="color: #FF572B; text-decoration: none;">Marketing@example.com</a></p>
        </div>
    </div>
</asp:Content>