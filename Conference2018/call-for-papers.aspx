<%@ Page Title="Call for papers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="call-for-papers.aspx.cs" Inherits="Conference2018.call_for_papers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron2.png" height="100" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Call for papers</h2>
            <strong>Dear Researchers</strong>
            <br />
            <br />
            <p>
                As celebrating anniversary 50<sup>th</sup> years of PSU and 
                you have an opportunity to network with other researchers 
                from many countries at <strong>PSU Phuket International Conference 2018</strong>,in Phuket, thailand
            </p>
        </div>
    </div>
    <a name="areas"></a>
    <div class="row">
        <div class="col-md-12">
            <h3>Research areas</h3>
            <p></p>
            <ul>
                <li><asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></li>
                <li><asp:Literal runat="server" Text="<%$ Resources:Resource, Area2 %>" /></li>
                <li><asp:Literal runat="server" Text="<%$ Resources:Resource, Area3 %>" /></li>
                <li><asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></li>
                <li><asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /></li>
            </ul>
        </div>
    </div>
    <a name="submission"></a>
    <div class="row">
        <div class="col-md-12">
            <h3>Paper submission</h3>
            <p class="tba">To Be Announced</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>Best paper award and publication</h3>
             <p class="tba">To Be Announced</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>Registration Fee</h3>
             <p class="tba">To Be Announced</p>
        </div>
    </div>
</asp:Content>
