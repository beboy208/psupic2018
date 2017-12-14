<%@ Page Title="Location" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="Conference2018.location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Map to PSU, Phuket</h2>
            <div class="container">
                <p>
                    <%-- AIzaSyCTyBvxbNjN1tnMKpONd-r32JyZ7ACaJTs --%>
                </p>
                <iframe class="center-block" frameborder="0" style="border: 0; width: 80%; height: 300px"
                    src="https://www.google.com/maps/embed/v1/place?q=%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%AD%E0%B8%98%E0%B8%B4%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9A%E0%B8%94%E0%B8%B5%E0%B8%A1%E0%B8%AD.%E0%B8%A0%E0%B8%B9%E0%B9%80%E0%B8%81%E0%B9%87%E0%B8%95&key=AIzaSyCTyBvxbNjN1tnMKpONd-r32JyZ7ACaJTs" allowfullscreen></iframe>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>PSU, Phuket diagram</h2>
            <div class="container">
                <p></p>
                <img src="http://www.conference.phuket.psu.ac.th/conference2013/images/Diagram.jpg" class="img-responsive center-block" />
            </div>
        </div>
        <div class="col-md-12">
            <h2>Video Introduction to PSU Phuket Campus</h2>
            <br />
            <embed src="imgs/intro_psu_pkt.mp4" class="center-block" width="560" height="315" autostart="0" />
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2>All about Phuket</h2>
                <div class="container">
                    <p style="background-image: url('https://www.tourismthailand.org/fileadmin/upload_img/about_tat/img_1468295874.jpg'); background-repeat: no-repeat; background-position: 0 0; background-size: 100px; padding-left: 110px">
                        Phuket features a dizzying array of accommodation options ranging from luxury hotels to family friendly beach resorts, 
                secluded island villas to budget hotels. With so many types of accommodation available in Phuket, 
                you may actually have a challenging time trying to decide which is the best to suit your needs; 
                it may be helpful to learn about the attractions (or lack thereof) near each of the beaches in Phuket 
                and then narrow your search once you have a couple different beaches in mind. 
                For more hotels please visit <a href="https://www.tourismthailand.org/About-Thailand/Destination/Phuket" target="_blank">www.tourismthailand.org</a>
                    </p>
                    <iframe class="center-block" width="560" height="315"  src="https://www.youtube.com/embed/skDfo3cMrJE?rel=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                </div>
            </div>
        </div>
</asp:Content>
