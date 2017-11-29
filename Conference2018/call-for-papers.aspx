<%@ Page Title="Call for papers" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="call-for-papers.aspx.cs" Inherits="Conference2018.call_for_papers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Call for papers</h2>
            <div class="container">
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
    </div>
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
            </div>
        </div>
    </div>
    <%--<div class="row">
        <div class="col-md-12">
            <h3>Best paper award and publication</h3>
             <p class="tba">To Be Announced</p>
        </div>
    </div>--%>
    <div class="row">
        <div class="col-md-12">
            <h3>Registration Fee</h3>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
</asp:Content>
