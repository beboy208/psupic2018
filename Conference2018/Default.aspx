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
            <p>
                On behalf of the Committee of PSU Phuket International Conference 2018, we would like to welcome national and international lecturers, scholars, researchers, graduates, and any others who are interested in attending <span class="linetub">the 3rd Annual PSU Phuket International Conference 2014 (PSU PIC 2014).
The objectives of the 3rd Annual PSU Phuket International Conference 2014 are to provide scholars, researchers, and graduates from various educational institutions with the opportunity to present their research studies, and to stimulate the exchanges of knowledge and experience between researchers leading to mutual understanding and further research collaboration.
We look forward to welcoming you on November 13 - November 14, 2014 </span>at Prince of Songkla University, Phuket Campus
The Committee of PSU
Phuket International
Conference 2018
            </p>
        </div>
    </div>

   <%-- <div class="row">
        <div class="col-md-4">
            <h2>Call for Papers</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <a class="btn btn-info" href="call-for-papers.aspx">Call for papers &raquo;</a>
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
        <div class="col-md-4">
            <h2>Best Paper award and publication</h2>
            <p>
                The awarded papers will be considered for publication in the Journal of International Studies or KMUTT Research and Development Journal (TCI Database) but conditions apply.
            </p>
            <p>
                <a class="btn btn-default" href="">Read more &raquo;</a>
            </p>
        </div>
    </div>--%>

    <div class="row">
        <div class="col-md-12">
            <h2>Follow us</h2>
            <p>
                <a href="https://www.facebook.com/The-Annual-PSU-Phuket-International-Conference-179495792106613/" target="facebook">
                    <img src="https://en.facebookbrand.com/wp-content/uploads/2016/05/FB-fLogo-Blue-broadcast-2.png" width="22" height="22" />
                </a>
            </p>
        </div>
    </div>
</asp:Content>
