<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="abstract.aspx.cs" Inherits="Conference2018._abstract" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Abstract Submission</h2>
            <div class="container">
                <p>
                    We would like to invite you to submit an extended abstract to present at the conference. 
                                The submission of an abstract should be regarded as an undertaking of which, should the abstract be accepted, 
                                at least one author will attend the conference to present the work. 
                                Each abstract will be judged on its originality, significance, technical quality and presentation. 
                                The abstract should be no more than two pages in length and conforming to 
                                the formatting instructions available below.
                </p>
                <u>Extended Abstract Guidelines</u>
                <ul>
                    <%--<li class="glyphicon glyphicon-download">--%>
                    <li><a href="Downloads/PSU_PIC2018_Abstract_Template.V.1.1.pdf">.PDF format</a></li>
                    <li><a href="Downloads/PSU_PIC2018_Abstract_Template.V.1.1.doc">.Doc format</a></li>
                </ul>
                <br />
                <h3>How to submit an abstract</h3>
                <div class="container">
                    <p>
                        <strong>PSU Phuket International Conference 2018 (PSU PIC 2018)</strong> utilises the <strong>EasyChair conference system</strong>
                        to manage paper submission. In order to submit paper(s) to PSU PIC 2018, you must login to the EasyChair website.
                                    If you do not have an EasyChair account, please follow the steps below:
                
                    </p>
                    <ol>
                        <li>Go to the <a href="https://easychair.org/account/signup.cgi" target="_blank">EasyChair account request page</a>. 
                                        Sign Up Enter your information request for creating an account.</li>
                        <li>You will get an automatic e-mail from EasyChair with the URL link to create your EasyChair account.</li>
                        <li>Fill in all the required information, and choose a username and password. Then click <strong>"Create my account"</strong>.</li>
                    </ol>
                    <p>
                        If you already have an EasyChair account, please follow the steps below
                    </p>
                    <ol>
                        <li>Login to EasyChair or go to this URL: <a href="https://easychair.org/conferences/?conf=psupic2018" target="_blank">https://easychair.org/conferences/?conf=psupic2018</a></li>
                        <li>Click on the <strong>"New Submission"</strong> menu, The Terms of Service window will be shown the first time 
                                        you access New Submission for the acceptance agreement of the EasyChair System. 
                                        After you accept the Terms of Service, then click Continue.</li>
                        <li>Fill in Authors Information, Title, Abstract and Category, Keywords then select <i>PDF</i> file and submit your paper.</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</asp:Content>