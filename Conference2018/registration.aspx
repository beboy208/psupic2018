<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Conference2018.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%
        bool _isAuthened = PSUPICAuthor != null;
        verifyPanel.Visible = !_isAuthened;
        authorPanel.Visible = _isAuthened;
        invoicePanel.Visible = _isAuthened;
        registPanel.Visible = _isAuthened;
    %>
    <div id="verifyPanel" runat="server" class="row" style="margin-top: 70px;">
        <div class="col-md-12">
            <h2>Verification</h2>
            <div class="container">
                <span>Author email</span>
                <asp:TextBox ID="txtAuthorEmail" runat="server"></asp:TextBox>
                <span>Paper ID (from Easychair)</span>
                <asp:TextBox ID="txtPaperID" runat="server"></asp:TextBox>
                <asp:Button ID="btnVerify" runat="server" Text="Verify" OnClick="btnVerify_Click" />
            </div>
        </div>
    </div>
    <div id="authorPanel" runat="server" class="row" style="margin-top: 70px;">
        <div class="col-md-12">
            <h2>Author</h2>
            <div class="container" runat="server">
                <%= PSUPICAuthor.Email %>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
            </div>
        </div>
    </div>
    <div id="invoicePanel" runat="server" class="row">
        <div class="col-md-12">
            <h2>Invoices</h2>
            <div class="container">
                List of Invoices
            </div>
        </div>
    </div>
    <div id="registPanel" runat="server" class="row">
        <div class="col-md-12">
            <h2>Registration</h2>
            <div class="container">
                registration form
                <asp:Button ID="btnRegist" runat="server" Text="Submit" OnClick="btnRegist_Click" />
            </div>
        </div>
    </div>
    
</asp:Content>
