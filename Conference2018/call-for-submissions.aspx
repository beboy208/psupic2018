﻿<%@ Page Title="Call for submission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="call-for-submissions.aspx.cs" Inherits="Conference2018.call_for_submissions" %>

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

