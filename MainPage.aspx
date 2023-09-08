<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Event_Booking.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-image: url('https://github.com/Practice-Here/Calculator/assets/140873521/d67577b6-a50f-4344-80c1-fd985a03c7c4');
            background-repeat: no-repeat;
            background-size: cover;
        }

        .movie-container {
            display: flex;
            align-items: flex-start;
        }

        .movie-image {
            border: 2px solid #20CD8D;
            margin-right: 20px;
        }

        .movie-details {
            font-size: medium;
        }

        .interested-button {
            margin-top: 10px;
        }

        .movie-info {
            display: flex;
            justify-content: space-between;
            align-items: flex-start;
        }

        .cast-table {
            width: 100%;
            border-collapse: collapse;
        }

        .cast-table td {
            padding: 8px;
            text-align: left;
        }

        .cast-table img {
            max-width: 50px;
            max-height: 50px;
            border-radius: 50%;
            border: 2px solid #20CD8D;
        }

        .auto-style1 {
            width: 84px;
            height: 74px;
        }

        .auto-style2 {
            width: 69px;
            height: 68px;
        }

        .auto-style3 {
            width: 79px;
            height: 72px;
        }

        .auto-style4 {
            width: 80px;
            height: 66px;
        }

        .auto-style5 {
            height: 32px;
        }

        .selected-button:active {
            background-color: orange;
        }

        .round-image {
            border: 2px solid #000;
            border-radius: 50%;
        }

    </style>


    <asp:Label ID="USName" runat="server" Font-Bold="true" Font-Size="Medium" Font-Names="visage" Style="float: left; margin: 20px;" ></asp:Label>
    <asp:Button ID="LogoutButton" runat="server" Text="Logout" OnClick="LogoutButton_Click" ForeColor="#20CD8D" Style="float: right; margin: 20px;" />

    <div class="jumbotron">
        <div class="movie-info">
            <div class="movie-container">
                <img class="movie-image" src="https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/jailer-et00331686-1664432415.jpg" alt="Jailer" width="200" height="300" />
                <div class="movie-details">
                    <p style="color: black; font-weight: bold;">JAILER</p>
                    <p style="color: #20CD8D;">300.6K are interested</p>
                    <p style="color: #565656;">Releasing on 10 Aug, 2023</p>
                    <p style="color: #565656;">
                        Are you interested in watching this movie?
                        <asp:Button ID="InterestedButton" runat="server" Text="I'm interested" Font-Bold="true" ForeColor="Black" BorderStyle="Solid" BorderColor="#20CD8D" OnClick="InterestedButton_Click" /><br />
                        <asp:Label ID="ThankYouLabel" runat="server" Text="Thank you for showing interest!" Visible="false" ForeColor="#FF5733" />
                    </p>
                </div>
            </div>
            <div class="additional-details">
                <p style="color: #20CD8D;">Languages: Tamil, Kannada, Hindi, Telugu</p>
                <p style="color: black;">Duration: 2h 49m</p>
                <p style="color: #565656;">Genre: Action, Drama, Thriller</p>
                <p style="color: #20CD8D;">Rating: UA</p>
                <asp:Button ID="BookTicketsButton" runat="server" Text="Book Tickets" BorderStyle="Solid" Font-Bold="true" ForeColor="Black" CssClass="selected-button" BorderColor="#20CD8D" OnClick="BookTicketsButton_Click" />
            </div>
        </div>
    </div>

        <asp:Label runat="server" Text="About the movie:" Font-Bold="true" Font-Size="X-Large" ForeColor="Black"></asp:Label>
    <asp:Label runat="server" Text="Muthuvel Pandian has arrived as Jailer!" Font-Bold="true" Font-Size="X-Large" ForeColor="#FF5733"></asp:Label>

    <asp:Table ID="CastTable" runat="server" CssClass="cast-table" BackColor="#000000" BorderColor="White" BorderStyle="Solid" BorderWidth="2px" >
        <asp:TableRow>
            <asp:TableCell>
                    <asp:Label runat="server" Text="Cast!" Font-Bold="true" ForeColor="#FF5733" class="auto-style5"></asp:Label>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Image ID="Image1" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/rajinikanth-1795-29-12-2016-01-58-24.jpg" CssClass="auto-style1" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" CssClass="cast-name" Font-Bold="true" ForeColor="White">
                        Rajinikanth<br />(Actor  Hero)
                </asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image2" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/ramya-krishnan-2920-18-09-2017-05-34-55.jpg" CssClass="auto-style2" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Ramya Krishnan (Actress Heroine)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image5" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/mohanlal-1502-24-03-2017-12-30-59.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label5" runat="server" CssClass="cast-name" Font-Bold="true" ForeColor="White">
                        Mohanlal<br />(Actor  Hero)
                </asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image6" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/dr-shiva-rajkumar-15132-1655186024.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label6" runat="server" CssClass="cast-name" Font-Bold="true" ForeColor="White">                        Shiva<br />(Cameo)                    </asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image7" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vasanth-ravi-1046606-1686631036.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label7" runat="server" Text="Vasanth Ravi (Actor  Son)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image8" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vinayakan-iein031171-06-06-2019-11-45-43.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label8" runat="server" Text="Vinayakan (Actor  Villan)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                    <asp:Label runat="server" Text="Crew!" Font-Bold="true" ForeColor="#FF5733" class="auto-style5"></asp:Label>
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Image ID="Image3" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/nelson-dilipkumar-1090825-14-08-2018-11-45-27.jpg" CssClass="auto-style3" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Nelson Dilipkumar (Director Writer)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image4" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/kalanidhi-maran-2016384-1649249086.jpg" CssClass="auto-style4" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="Kalanithi Maran (Producer)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image9" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/anirudh-ravichander-34897-24-03-2017-13-54-49.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label9" runat="server" Text="Anirudh (Singer,Music)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image10" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vijay-kartik-kannan-iein024599-17-06-2019-15-54-18.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label10" runat="server" Text="Vijay Kartik (DOP)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image11" runat="server" ImageUrl="https://www.filmibeat.com/img/162x203/popcorn/profile_photos/jani-master-20210702120224-48546.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label11" runat="server" Text="Jani Master (Dancer)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image12" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/d80c55be-f254-4a28-b340-d547b6f2a503" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label12" runat="server" Text="Pallavi Singh (Costumer)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                    <asp:Label runat="server" Text="Casts!" Font-Bold="true" ForeColor="#FF5733" class="auto-style5"></asp:Label>
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
                <asp:Image ID="Image13" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/yogi-babu-1055754-02-12-2021-12-53-23.jpg" CssClass="auto-style3" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label13" runat="server" Text="Yogi Babu (Comedian Actor)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image14" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/vtv-ganesh-35924-24-03-2017-17-32-54.jpg" CssClass="auto-style4" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label14" runat="server" Text="VTV Ganesh (Actor)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image15" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/sunil-2292-24-03-2017-18-02-16.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label15" runat="server" CssClass="cast-name" Font-Bold="true" ForeColor="White">
                        Sunil<br />(Actor Comedy)
                </asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image16" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/jackie-shroff-882-19-09-2017-05-13-08.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label16" runat="server" CssClass="cast-name" Font-Bold="true" ForeColor="White">
                        Jackie<br />(Cameo)
                </asp:Label>
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image17" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/artist/images/website/poster/large/tamannaah-bhatia-16842-20-12-2017-04-21-12.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label17" runat="server" Text="Tamannaah (Cameo)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell><asp:TableCell>
                <asp:Image ID="Image18" runat="server" ImageUrl="https://www.themoviedb.org/t/p/w300_and_h450_bestv2/JX9ukTnXCNBlsbQeHGY85qf3du.jpg" CssClass="auto-style1" />
            </asp:TableCell><asp:TableCell>
                <asp:Label ID="Label18" runat="server" Text="Redin Kingsley (Comedy)" CssClass="cast-name" Font-Bold="true" ForeColor="White" />
            </asp:TableCell></asp:TableRow></asp:Table><asp:Table ID="ImageTable" runat="server" CssClass="image-table" Width="1195px" Height="367px" BackColor="#EEEEEE" Style="margin-left: -20px;">
        <asp:TableRow>
            <asp:TableCell CssClass="table-header" ColumnSpan="4" Style="padding-left: 10px;">
                <asp:Label ID="Heads" runat="server" Text="You might also like!" Font-Bold="true" Font-Size="Large" Font-Names="Glowing"></asp:Label>
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="DinosaursLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt27598618/">
                    <asp:Image ID="DinosaursImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/dinosaurs-et00364702-1689659264.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="Dinosaurslbl" runat="server" Text="( Dinosaurs )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="MaaveeranLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt22543326/">
                    <asp:Image ID="MaaveeranImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/maaveeran-et00357966-1687763694.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="Maaveeranlbl" runat="server" Text="( Maaveeran )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="MaamannanLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt20242416/">
                    <asp:Image ID="MaamannanImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/maamannan-et00358481-1683024085.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="Maamannanlbl" runat="server" Text="( Maamannan )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="LuckyManLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt26660472/">
                    <asp:Image ID="LuckyManImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/a0ca8173-c6cf-428c-b892-5510de31aaaf" CssClass="image" />
                    <br />
                    <asp:Label ID="LuckyManlbl" runat="server" Text="( Lucky Man )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="partnerLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt28266169/">
                    <asp:Image ID="partnerImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/partner-2023-et00367773-1693035695.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="partnerlbl" runat="server" Text="( partner )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell>
            <asp:Label runat="server"></asp:Label>&nbsp;&nbsp;
            </asp:TableCell></asp:TableRow><asp:TableRow>
            <asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="ParamporulLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt28372289/">
                    <asp:Image ID="ParamporulImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/paramporul-et00367848-1692773762.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="Paramporullbl" runat="server" Text="( Paramporul )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="JawanLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt15354916/">
                    <asp:Image ID="JawanImage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/6b9137e3-673a-4d3b-ac27-2a010c743ea3" CssClass="image" />
                    <br />
                    <asp:Label ID="Jawanlbl" runat="server" Text="( Jawan )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="OppenheimerLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt15398776/">
                    <asp:Image ID="Oppenheimermage" runat="server" ImageUrl="https://github.com/Practice-Here/Calculator/assets/140873521/6fdd1362-7c91-4e87-a723-9be4fac672f7" CssClass="image" />
                    <br />
                    <asp:Label ID="Oppenheimerlbl" runat="server" Text="( Oppenheimer )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="KickLink" runat="server" NavigateUrl="https://www.imdb.com/title/tt22069414/">
                    <asp:Image ID="KickImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/kick-tamil-et00340326-1663749424.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="Kicklbl" runat="server" Text="( Kick )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell><asp:TableCell CssClass="table-cell" Style="padding-left: 10px;">
                <asp:HyperLink ID="kushiLink1" runat="server" NavigateUrl="https://www.imdb.com/title/tt15380630/">
                    <asp:Image ID="kushiImage" runat="server" ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/website/poster/large/kushi-et00328665-1693390326.jpg" CssClass="image" />
                    <br />
                    <asp:Label ID="kushilbl" runat="server" Text="( kushi )" Font-Bold="true" ForeColor="Black" Font-Size="Small"></asp:Label>
                </asp:HyperLink>
            </asp:TableCell></asp:TableRow></asp:Table></asp:Content>