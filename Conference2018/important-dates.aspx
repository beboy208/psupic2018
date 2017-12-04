<%@ Page Title="Important Dates" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="important-dates.aspx.cs" Inherits="Conference2018.important_dates" %>

<%@ Register Src="~/UserControls/ucImportantDates.ascx" TagPrefix="uc1" TagName="ucImportantDates" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Important Dates</h2>
            <div class="container">
                <uc1:ucImportantDates runat="server" ID="ucImportantDates" />
            </div>
        </div>
    </div>
    <hr />

    <a name="ceremony"></a>
    <div class="row">
        <div class="col-md-12">
            <h2>Open Ceremony</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
    <hr />

    <a name="reception"></a>
    <div class="row">
        <div class="col-md-12">
            <h2>Welcome Reception</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
    <hr />

    <a name="session"></a>
    <div class="row">
        <div class="col-md-12">
            <h2>Conference Session</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
    <hr />

    <a name="sightseeing"></a>
    <div class="row">
        <div class="col-md-12">
            <h2>Phuket Sightseeing Tours</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
    <hr />

    <a name="transportation"></a>
    <div class="row">
        <div class="col-md-12">
            <h2>Transportation Services</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div>
    </div>
</asp:Content>
