<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Conference2018.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row" style="margin-top: 70px;">
        <div class="col-md-12">
            <%--<section id="loginForm">
                <div class="form-horizontal">
                    <label class="" for="txtUsername">Username:</label>
                    <asp:TextBox ID="txtUsername" CssClass="form-control" placeholder="PSU Passport" runat="server"></asp:TextBox>
                    <label class="" for="txtPassword">Passport:</label>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" placeholder="Password" runat="server"></asp:TextBox>
                    <asp:Button ID="btnLogin" CssClass="btn btn-default" runat="server" Text="Login" />
                </div>
                <asp:Label ID="txtLoginError" runat="server" CssClass="text-danger" Visible="false">Invalid Email or PaperID.</asp:Label>
            </section>--%>
            <h3>PSU Passport</h3>
            <asp:Login ID="Login1" DestinationPageUrl="~/" runat="server" CssClass="form-horizontal"
                TextBoxStyle-CssClass="form-control" LoginButtonStyle-CssClass="btn btn-default" TitleText="PSU Passport" RememberMeSet="False">
            </asp:Login>

        </div>
    </div>
</asp:Content>
