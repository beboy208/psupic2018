<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Conference2018._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        
        <img id="jumbotron" src="imgs/jumbotron2.png" /> 
        <%--<h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>Welcome Message</h2>
            <div class="container">
                <p>
                    <strong>Prince of Songkla University (PSU)</strong> was the first and now largest university in southern Thailand, 
                established in 1967. The university consists of five campuses with over 40,000 students. 
                PSU has a wide range of specialisms from science and technology, through health science, 
                to social and humanities. Phuket campus focuses on areas supporting the local community, 
                mainly related to the tourism industry in its many facets. 
                As 2018 is <strong>the 50th Anniversary of PSU</strong>, to celebrate this, 
                we are pleased to invite you to submit your extended abstract to the <strong>PSU PIC conference</strong>.
                </p>
                <p>
                    <strong>PSU PIC</strong>, the PSU Phuket International Conference, 
                aims to strengthen the research collaboration and networking among international academicians, 
                professionals, and researchers. The conference will provide an international forum for presenting 
                and discussing the most recent research studies and innovative ideas 
                while stimulating the exchange of knowledge and experience in the domain of interest from around the world.
                </p>
                <p>
                    The <strong>PSU PIC 2018</strong> will be held on <a href="important-dates.aspx">March 11-12, 2018</a> in Phuket, 
                a prime tourist destination with amazing natural scenery and an impressive cultural old town. 
                The two-day conference will contain interesting keynote speeches by famous speakers and 
                high-quality research presentations under the theme of <strong>“Creativity and Innovations for Global Development.”</strong>
                </p>
            </div>
        </div>
    </div>

   <%-- <div class="row">
        <div class="col-md-4">
            <h2>Call for Papers</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <a class="btn btn-default" href="call-for-papers.aspx">Call for papers &raquo;</a>
        </div>
        <div class="col-md-4">
            <h2>Research Areas</h2>
            <p></p>
            <ul>
                <li>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></li>
                <li>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area2 %>" /></li>
                <li>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area3 %>" /></li>
                <li>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></li>
                <li>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /></li>
            </ul>
        </div>
        <%-- <div class="col-md-4">
            <h2>Best Paper award and publication</h2>
            <p>
                The awarded papers will be considered for publication in the Journal of International Studies or KMUTT Research and Development Journal (TCI Database) but conditions apply.
            </p>
            <p>
                <a class="btn btn-default" href="">Read more &raquo;</a>
            </p>
        </div>--%>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>Follow us</h2>
            <div class="container">
                <p>
                    <a href="https://www.facebook.com/The-Annual-PSU-Phuket-International-Conference-179495792106613/" target="facebook">
                        <img src="https://en.facebookbrand.com/wp-content/uploads/2016/05/FB-fLogo-Blue-broadcast-2.png" width="22" height="22" />
                    </a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
