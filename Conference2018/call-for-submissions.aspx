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
                    The PSU Phuket International Conference 2018 (PSU PIC 2018) provides an international forum for academicians, 
                    professionals and researchers to present and discuss the most recent research studies and innovative ideas. 
                    Thus stimulating the exchange of knowledge and experiences in the domain of interest from around the world. 
                    We welcome submissions addressing a wide range of topics under the theme of  “<strong>Creativity and Innovations for Global Development</strong>”. 
                    The conference will be held in Phuket, from 11-12 March 2018.
                </p>
                <a name="areas"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Topics</h3>
                        <p>Topics of interest include, but are certainly not limited to, the following: </p>
                        <div class="container">
                            <p></p>
                            
                                  <button class="accordion"> <asp:Literal runat="server" Text="<%$ Resources:Resource, Area2 %>" /></button>
                                <div class="panel">
                                    <ul>  
                                        <li>Software Engineering</li>
                                        <ul> 
                                                <li> Atmospheric Modelling and Numerical Prediction</li>                                  
                                                <li> Modelling and Decision Support Tools</li>
                                                <li> Wastewater and Sludge Treatment Technologies and Pollution Control</li>
                                                <li> Soil Restoration/Phytoremediation</li>
                                                <li> Air Pollution and Treatment Technologies</li>
                                                <li> Advances in Biological, Physical and Chemical processes</li>
                                                <li> Monitoring and Analysis of Environmental Contaminants</li>
                                                <li> Hazardous Substances and DetectionTechniques</li>
                                                <li> Clean Technologies and Eco-technology</li>
                                                <li> Fate of Hazardous Substances</li>
                                                <li> Other relevant topics</li>
                                          </ul>    
                                     </ul>

                                    <ul>
                                        <li>e-Business</li>
                                           <ul>
                                               <li> e-Business Ontologies and Models</li>
                                                <li> e-Commerce Application Fields</li>
                                                <li> e-Commerce Economics</li>
                                                <li> e-Commerce Services</li>
                                                <li> Digital Marketing</li>
                                                <li> Enterprise Resource Planning</li>
                                                <li> Data Analysis</li>
                                                <li> Virtual Organisations</li>
                                                <li> Business Intelligence</li>
                                                <li> Web Analytics</li>
                                                <li> Other relevant topics</li>
                                             </ul>
                                        </ul>
                                    <ul>
                                            <li>IoT& Smart Systems</li>
                                           <ul>
                                               <li> Artificial Intelligence
                                                <li> Expert Systems</li>
                                                <li> Natural Language Processing</li>
                                                <li> Data Mining</li>
                                                <li> Sensing and Sensor Networks</li>
                                                <li> Big Data</li>
                                                <li> Smart Cities</li>
                                                <li> Computer vision</li>
                                                <li> Other relevant topics</li>
                                               </ul>
                                        </ul>
                                     <ul>
                                                  <li> Computer Network</li>
                                           <ul>
                                               <li> Networking</li>
                                                <li> Wireless/ Mobile Communication</li>
                                                <li> Mobile Adhoc Networks</li>
                                                <li> Cloud Technology</li>
                                                <li> Other relevant topics</li>
                                           </ul>    
                                     </ul>
                                 </div>
                                
                                   <button class="accordion"><asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></button>
                                    <div class="panel">
                                       <ul>  
                                       <li> Environmental Science, Engineering and Technology </li>
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
                                          </ul>
                                  <ul>  
                                     <li>Environmental Management and sustainable development </li>
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
                                             </ul>
     
                                     <ul>  
                                        <li>GIS and Remote Sensing </li>
                                          <ul> 
                                                <li> Applications in Natural Resources and Environmental Management</li>
                                                <li>Applications in Urban Planning and Management</li>
                                                <li>Applications in Agriculture and Forestry</li>
                                                <li>Applications in Earth's Climate Change</li>
                                                <li>Applications in Natural Hazard and Disaster</li>
                                                <li>Applications in Biodiversity Conservation and Management</li>
                                                <li>Applications in Coastal and Marine Management</li>
                                                <li>Applications in Water Resource Management</li>
                                                <li>Other relevant topics</li>
                                            </ul>    
                                     </ul>
                                     </div>
                                 
                                
                                 <button class="accordion"> <asp:Literal runat="server" Text="<%$ Resources:Resource, Area3 %>" /></button>
                                <div class="panel">
                                    <ul>
                                         <li> Hospitality and Tourism Operations and Management</li>
                                        <li> Destination Marketing and Management</li>
                                        <li> Tourist Behaviour</li>
                                        <li> Hospitality and Tourism Financial Management</li>
                                        <li> Hospitality, Tourism and the Environment</li>
                                        <li> Hospitality and Tourism Human Resource Management</li>
                                        <li> Hospitality and Tourism Education</li>
                                        <li> Information Technology for Hospitality and Tourism</li>
                                        <li> Hospitality and Tourism Service Quality, Sales and Marketing</li>
                                        <li> SMEs in the Hositality and Tourism Industries</li>
                                        <li> Culinary Arts and Foodservice Operations</li>
                                        <li> Meetings, Incentive, Conventions & Exhibitions</li>
                                        <li> Other relevant topics</li>
                                   </ul>
                                </div>
                                
                                 <button class="accordion"><asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></button>
                                <div class="panel">
                                    <ul>
                                         <li> Business Administration and Management</li>                                       
                                        <li> Economics</li>
                                        <li> Marketing Management</li>
                                        <li> Supply Chain Management</li>
                                        <li> Logistic Management</li>
                                        <li> Finances</li>
                                        <li> Human Resource Management</li>
                                        <li> Other relevant topics</li>
                                  </ul> 
                                </div>
                                <button class="accordion"> <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /> </button>
                                <div class="panel"> 
                                    <ul>
                                         <li> Area Studies</li>                                                                      
                                        <li> Cultural Management</li>
                                        <li> International Relations</li>
                                        <li> Languages and Education</li>
                                        <li> Intercultural Communication</li>
                                        <li> Multiculturalism</li>
                                        <li> Migration</li>
                                        <li> Translation</li>
                                        <li> Linguistics</li>
                                        <li> Other relevant topics</li>
                                  </ul> 
                                </div>
                            
                        </div>
                    </div>
                </div>
                <a name="submission"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Abstract submission</h3>
                        <div class="container">
                            <p class="tba">To Be Announced</p>
                            <a href="https://easychair.org/conferences/?conf=psupic2018" class="btn btn-default" target="_blank">Submit on EasyChair</a>
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
                            <h4>Payment method</h4>
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
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    }
    event.preventDefault();
  }
}
</script>

</asp:Content>

