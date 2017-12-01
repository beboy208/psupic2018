<%@ Page Title="Call for submission" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="call-for-submissions.aspx.cs" Inherits="Conference2018.call_for_submissions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Call for submission</h2>
            <div class="container">
                <strong>Dear Researchers</strong>
                <br />
                <br />
                <p>
                    As celebrating anniversary 50<sup>th</sup> years of PSU and 
                you have an opportunity to network with other researchers 
                from many countries at <strong>PSU Phuket International Conference 2018</strong>,in Phuket, thailand
                </p>
                <a name="areas"></a>
                <div class="row">
                    <div class="col-md-12">
                        <h3>Topics</h3>
                        <div class="container">
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
</asp:Content>