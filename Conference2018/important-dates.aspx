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
                <uc1:ucImportantDates runat="server" id="ucImportantDates" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3></h3>
            <p></p>
        </div>
    </div>
</asp:Content>
