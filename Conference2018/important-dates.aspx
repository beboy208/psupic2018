<%@ Page Title="Important Dates" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="important-dates.aspx.cs" Inherits="Conference2018.important_dates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Important Dates</h2>
            <div class="container">
                <dl class="important-dates">
                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule1 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue1 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule2 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue2 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule3 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue3 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule4 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue4 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule5 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue5 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule6 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue6 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule7 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue7 %>" /></dd>

                    <dt>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, lbSchedule8 %>" /></dt>
                    <dd>
                        <asp:Literal runat="server" Text="<%$ Resources:Resource, ScheduleValue8 %>" /></dd>
                </dl>
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
