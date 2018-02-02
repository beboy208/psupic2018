<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="camera.aspx.cs" Inherits="Conference2018.camera" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Camera-ready Submission</h2>
            <div class="container">
                <h3>How to submit the camera-ready version</h3>
                <div class="container">
                    <ol>
                        <li>Go to the on-line submission system Easy Chair for PSU PIC 2018 <a href="https://easychair.org/conferences/?conf=psupic2018" target="_blank">https://easychair.org/conferences/?conf=psupic2018</a>
                            and log-in using your EasyChair account (this should be the same account you have used to submit the initial paper).</li>
                        <li>Click on the role link as <strong>"Proceedings author (Camera-Ready Submission)"</strong></li>
                        <li>Click on the <strong>"My Papers"</strong> menu item at the top of the page.</li>
                        <li>Click on the paper ID"that you want to submit. This will take you to the individual paper page that contains all the details of the paper. 
                                        Click on the <strong>"Update new version"</strong>
                        menu on the right corner to submit the camera ready version. 
                                    <li>At the bottom of the page, browse to find your PDF files. Then press <strong>"Submit a New Version"</strong> button. 
                                        We <u>do not require</u> the signed copyright form for this conference.</li>
                    </ol>
                    <u>Camera-ready version format guidelines</u>
                    <ul>
                        <%--<li class="glyphicon glyphicon-download">--%>
                        <li><a href="Downloads/PSU_PIC2018_Abstract_Template.V.1.1.pdf">.PDF format</a></li>
                        <li><a href="Downloads/PSU_PIC2018_Abstract_Template.V.1.1.doc">.Doc format</a></li>
                    </ul>
                </div>
                <%-- <p class="tba">To Be Announced</p>--%>
                <%--<a href="https://easychair.org/conferences/?conf=psupic2018" class="btn btn-default" target="_blank">Submit on EasyChair</a>--%>
            </div>
        </div>
    </div>
</asp:Content>
