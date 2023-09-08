<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TicketsPage.aspx.cs" Inherits="Event_Booking.TicketsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #CCF4E5;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

    <asp:Table ID="tbltickets" runat="server" HorizontalAlign="Center" Height="510px" Width="99px" class="jumbotron" BackColor="#566F73">
        <asp:TableRow>
            <asp:TableCell HorizontalAlign="Center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="USName" runat="server" Font-Bold="true" Font-Size="Medium" Font-Names="visage" ForeColor="White" style="float: left; margin-left: 10px"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="titleLabel" runat="server" Text="Select a movie:" CssClass="movie-label" Font-Names="visage" ForeColor="White" Font-Bold="true" style="margin-left: 60px;"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="MovieDropDown" runat="server" Font-Bold="true" AutoPostBack="true" OnSelectedIndexChanged="MovieDropDown_SelectedIndexChanged">
                    <asp:ListItem Text="Select Here!"></asp:ListItem>
                    <asp:ListItem Text="Jailer (RS.220)" Value="220"></asp:ListItem>
                    <asp:ListItem Text="Dinosaurs (RS.150)" Value="150"></asp:ListItem>
                    <asp:ListItem Text="Maaveeran (RS.170)" Value="170"></asp:ListItem>
                    <asp:ListItem Text="Maamannan (RS.200)" Value="200"></asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Image ID="imgBeforeSeatingTable" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/514b6757-052d-454d-a8e2-67fefec9e063" AlternateText="Image description" Width="300" Height="200" />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="center">
                <asp:Button ID="LeftExitButton" runat="server" Text="Exit" BorderStyle="Solid" Font-Bold="true" ForeColor="#E10D24" style="margin-right: 230px;"></asp:Button>
                <asp:Button ID="RightExitButton" runat="server" Text="Exit" BorderStyle="Solid" Font-Bold="true" ForeColor="#E10D24" Style="margin-left: 230px;"></asp:Button>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:Table ID="seatingTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="lblnxt1" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat1" runat="server" Text="1" OnClick="Seat1_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>&nbsp;&nbsp;
                            <asp:Button ID="Seat2" runat="server" Text="2" OnClick="Seat2_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="lblnxt2" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat3" runat="server" Text="3" OnClick="Seat3_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat4" runat="server" Text="4" OnClick="Seat4_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat5" runat="server" Text="5" OnClick="Seat5_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="lblnxt3" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat6" runat="server" Text="6" OnClick="Seat6_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat7" runat="server" Text="7" OnClick="Seat7_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label4" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat8" runat="server" Text="8" OnClick="Seat8_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat9" runat="server" Text="9" OnClick="Seat9_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label5" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat10" runat="server" Text="10" OnClick="Seat10_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat11" runat="server" Text="11" OnClick="Seat11_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat12" runat="server" Text="12" OnClick="Seat12_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Labe6" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Button13" runat="server" Text="13" BackColor="#E10D24" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button14" runat="server" Text="14" BackColor="#E10D24" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Labe7" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat15" runat="server" Text="15" OnClick="Seat15_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat16" runat="server" Text="16" OnClick="Seat16_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label8" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Button17" runat="server" Text="17" BackColor="Red" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button18" runat="server" Text="18" BackColor="Red" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat19" runat="server" Text="19" OnClick="Seat19_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label9" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat20" runat="server" Text="20" OnClick="Seat20_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat21" runat="server" Text="21" OnClick="Seat21_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label10" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Button22" runat="server" Text="22" BackColor="Red" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button23" runat="server" Text="23" BackColor="Red" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label11" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat24" runat="server" Text="24" OnClick="Seat24_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat25" runat="server" Text="25" OnClick="Seat25_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat26" runat="server" Text="26" OnClick="Seat26_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                        <asp:TableCell HorizontalAlign="Center">
                            <asp:Label ID="Label12" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat27" runat="server" Text="27" OnClick="Seat27_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat28" runat="server" Text="28" OnClick="Seat28_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                    </asp:TableRow>

                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="3" HorizontalAlign="Center">
                            <asp:Label ID="lblnxt13" runat="server" Width="212px"></asp:Label><br />
                            <asp:Button ID="Seat29" runat="server" Text="29" OnClick="Seat29_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Seat30" runat="server" Text="30" OnClick="Seat30_Click" CssClass="unselected" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            &nbsp;&nbsp;
                            <asp:Button ID="Button31" runat="server" Text="31" BackColor="Red" BorderColor="Black"></asp:Button>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                <asp:Table ID="showcaseTable" runat="server" CssClass="showcase">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Button ID="availableButton" runat="server" CssClass="seat available" Enabled="false" BackColor="#ff00ff" BorderColor="Black"></asp:Button>
                            <asp:Label ID="availableLabel" runat="server" Text="Available" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="selectedButton" runat="server" CssClass="seat selected" Enabled="false" BackColor="#00ff00" BorderColor="Black"></asp:Button>
                            <asp:Label ID="selectedLabel" runat="server" Text="Selected" ForeColor="White"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:Button ID="soldButton" runat="server" CssClass="seat sold" Enabled="false" BackColor="Red" BorderColor="Black"></asp:Button>
                            <asp:Label ID="soldLabel" runat="server" Text="Sold" ForeColor="White"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" HorizontalAlign="center" Style="padding-left: 35px; padding-right: 65px;  padding-top: 20px;">
                <asp:Button ID="Paynow" runat="server" Text="Ready To Pay" OnClick="Paynow_Click" BorderStyle="Solid" BackColor="#000000" Font-Bold="true" ForeColor="#CCF4E5"></asp:Button>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell ColumnSpan="2" VerticalAlign="Bottom" HorizontalAlign="Center">
                <asp:Table ID="infoTable" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label ID="countLabel" runat="server" Text="You have selected " ForeColor="#FF5733" Font-Bold="true"></asp:Label>
                            <asp:Label ID="countSpan" runat="server" CssClass="selected-Seats" Text="" ForeColor="White"></asp:Label>
                            <asp:Label ID="seatLabel" runat="server" Text=" seat for a price of RS." ForeColor="#FF5733" Font-Bold="true"></asp:Label>
                            <asp:Label ID="totalSpan" runat="server" CssClass="total-price" Text="" ForeColor="White"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>