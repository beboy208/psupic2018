<%@ Page Title="Call for submission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="call-for-submissions.aspx.cs" Inherits="Conference2018.call_for_submissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2 class="page-header">Goals and Scope</h2>
            <div class="container">
                <br />
                <p>
                    <strong>The PSU Phuket International Conference 2018 (PSU PIC 2018)</strong> provides an international forum for academicians, 
                    professionals and researchers to present and discuss the most recent research studies and innovative ideas 
                    to stimulate the exchange of knowledge and experiences from around the world. 
                    We welcome submissions addressing a wide range of topics under the theme of <strong>"Creativity and Innovations for Global Development"</strong>. 
                    The conference will be held in Phuket, from <strong>11-12 March 2018</strong>.
                </p>
                <a name="areas"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Topics</h3>
                        <p>Topics of interest include, but are certainly not limited to, the following: </p>
                        <div class="container">
                            <p></p>

                            <button class="accordion">
                                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area2 %>" /></button>
                            <div class="panel">
                                <ul>
                                    <li>Software Engineering
                                        <ul>
                                            <li>Empirical software engineering</li>
                                            <li>Formal methods</li>
                                            <li>Requirements engineering</li>
                                            <li>Soil Restoration/Phytoremediation</li>
                                            <li>Specification and modelling languages</li>
                                            <li>Software modelling and design</li>
                                            <li>Software testing</li>
                                            <li>Software evolution and maintenance</li>
                                            <li>Software verification and validation</li>
                                            <li>Other relevant topics</li>
                                        </ul>
                                    </li>
                                </ul>

                                <ul>
                                    <li>e-Business
                                    <ul>
                                        <li>e-Business Ontologies and Models</li>
                                        <li>e-Commerce Application Fields</li>
                                        <li>e-Commerce Economics</li>
                                        <li>e-Commerce Services</li>
                                        <li>Digital Marketing</li>
                                        <li>Enterprise Resource Planning</li>
                                        <li>Data Analysis</li>
                                        <li>Virtual Organisations</li>
                                        <li>Business Intelligence</li>
                                        <li>Web Analytics</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>
                                <ul>
                                    <li>IoT & Smart Systems
                                    <ul>
                                        <li>Artificial Intelligence</li>
                                        <li>Expert Systems</li>
                                        <li>Natural Language Processing</li>
                                        <li>Data Mining</li>
                                        <li>Sensing and Sensor Networks</li>
                                        <li>Big Data</li>
                                        <li>Smart Cities</li>
                                        <li>Computer vision</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>
                                <ul>
                                    <li>Computer Network
                                    <ul>
                                        <li>Networking</li>
                                        <li>Wireless/ Mobile Communication</li>
                                        <li>Mobile Adhoc Networks</li>
                                        <li>Cloud Technology</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>
                            </div>

                            <button class="accordion">
                                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></button>
                            <div class="panel">
                                <ul>
                                    <li>Environmental Science, Engineering and Technology
                                    <ul>
                                        <li>Atmospheric Modelling and Numerical Prediction</li>
                                        <li>Modelling and Decision Support Tools</li>
                                        <li>Wastewater and Sludge Treatment Technologies and Pollution Control</li>
                                        <li>Soil Restoration/Phytoremediation</li>
                                        <li>Air Pollution and Treatment Technologies</li>
                                        <li>Advances in Biological, Physical and Chemical processes</li>
                                        <li>Monitoring and Analysis of Environmental Contaminants</li>
                                        <li>Hazardous Substances and DetectionTechniques</li>
                                        <li>Clean Technologies and Eco-technology</li>
                                        <li>Fate of Hazardous Substances</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>
                                <ul>
                                    <li>Environmental Management and sustainable development
                                    <ul>
                                        <li>Environmental Sustainability</li>
                                        <li>Sustainability Management/Sustainable Development</li>
                                        <li>Life Cycle Analysis</li>
                                        <li>Environmental Economics and Trading System</li>
                                        <li>Global Environmental Change and Ecosystems Management</li>
                                        <li>Climate Changes and Global Warming</li>
                                        <li>Water Resources and Watershed/ River Basin Management</li>
                                        <li>Water and Wastewater Management</li>
                                        <li>Air Quality Assessment</li>
                                        <li>Solid and Hazardous Waste Management,</li>
                                        <li>Waste Minimization, Recycling and Reuse</li>
                                        <li>Disaster Prevention and Mitigation</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>

                                <ul>
                                    <li>GIS and Remote Sensing
                                    <ul>
                                        <li>Applications in Natural Resources and Environmental Management</li>
                                        <li>Applications in Urban Planning and Management</li>
                                        <li>Applications in Agriculture and Forestry</li>
                                        <li>Applications in Earth's Climate Change</li>
                                        <li>Applications in Natural Hazard and Disaster</li>
                                        <li>Applications in Biodiversity Conservation and Management</li>
                                        <li>Applications in Coastal and Marine Management</li>
                                        <li>Applications in Water Resource Management</li>
                                        <li>Other relevant topics</li>
                                    </ul>
                                    </li>
                                </ul>
                            </div>


                            <button class="accordion">
                                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area3 %>" /></button>
                            <div class="panel">
                                <ul>
                                    <li>Hospitality and Tourism Operations and Management</li>
                                    <li>Destination Marketing and Management</li>
                                    <li>Tourist Behaviour</li>
                                    <li>Hospitality and Tourism Financial Management</li>
                                    <li>Hospitality, Tourism and the Environment</li>
                                    <li>Hospitality and Tourism Human Resource Management</li>
                                    <li>Hospitality and Tourism Education</li>
                                    <li>Information Technology for Hospitality and Tourism</li>
                                    <li>Hospitality and Tourism Service Quality, Sales and Marketing</li>
                                    <li>SMEs in the Hositality and Tourism Industries</li>
                                    <li>Culinary Arts and Foodservice Operations</li>
                                    <li>Meetings, Incentive, Conventions & Exhibitions</li>
                                    <li>Other relevant topics</li>
                                </ul>
                            </div>

                            <button class="accordion">
                                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></button>
                            <div class="panel">
                                <ul>
                                    <li>Business Administration and Management</li>
                                    <li>Economics</li>
                                    <li>Marketing Management</li>
                                    <li>Supply Chain Management</li>
                                    <li>Logistic Management</li>
                                    <li>Finances</li>
                                    <li>Human Resource Management</li>
                                    <li>Other relevant topics</li>
                                </ul>
                            </div>
                            <button class="accordion">
                                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" />
                            </button>
                            <div class="panel">
                                <ul>
                                    <li>Area Studies</li>
                                    <li>Cultural Management</li>
                                    <li>International Relations</li>
                                    <li>Languages and Education</li>
                                    <li>Intercultural Communication</li>
                                    <li>Multiculturalism</li>
                                    <li>Migration</li>
                                    <li>Translation</li>
                                    <li>Linguistics</li>
                                    <li>Other relevant topics</li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
                <a name="submission"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Abstract Submission</h3>
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
                            <h4>How to submit an abstract</h4>
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

                            <br />
                            <h4>How to submit the camera-ready version</h4>
                            <div class="container">
                                <ol>
                                    <li>Go to the on-line submission system Easy Chair for PSU PIC 2018 <a href="https://easychair.org/conferences/?conf=psupic2018" target="_blank">https://easychair.org/conferences/?conf=psupic2018</a>
                                        and log-in using your EasyChair account (this should be the same account you have used to submit the initial paper proposal).</li>
                                    <li>Click on the <strong>"Proceedings"</strong> menu item at the top of the page.</li>
                                    <li>Click on the paper ID that you want to submit. This will take you to the individual paper page that contains all the details of the paper.</li>
                                    <li>Click on the <strong>"Upload new version"</strong> menu on the right corner to submit the final version.</li>
                                    <li>At the bottom of the page, browse to find your PDF files. Then press <strong>"Submit a New Version"</strong> button. 
                                        We <i>do not require</i> the signed copyright form for this conference.</li>
                                </ol>
                            </div>
                            <%-- <p class="tba">To Be Announced</p>--%>
                            <%--<a href="https://easychair.org/conferences/?conf=psupic2018" class="btn btn-default" target="_blank">Submit on EasyChair</a>--%>
                        </div>
                    </div>
                </div>
                <a name="registration"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Registration</h3>
                        <div class="container">
                            <p></p>
                            <h4>Refistration Fee</h4>
                            <div class="container">
                                <div class="reg-fee">
                                    <span class="type">Early Bird Registration</span>
                                    <span class="fee">$200</span>
                                    <span class="note">(Deadline February 15, 2018)</span>
                                </div>
                                <div class="reg-fee">
                                    <span class="type">Regular Registration</span>
                                    <span class="fee">$250</span>
                                    <span class="note">(Deadline February 28, 2018)</span>
                                </div>
                                <div class="reg-fee">
                                    <span class="type">Late/On-site Registration</span>
                                    <span class="fee">$300</span>
                                    <span class="note"></span>
                                </div>
                            </div>
                            <h4>Payment Method</h4>
                            <div class="container">
                                <p class="tba">To Be Announced</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].onclick = function (event) {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.maxHeight) {
                    panel.style.maxHeight = null;
                } else {
                    panel.style.maxHeight = panel.scrollHeight + "px";
                }
                event.preventDefault();
            }
        }
    </script>

</asp:Content>

