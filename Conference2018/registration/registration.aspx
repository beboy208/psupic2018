<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Conference2018.registration.registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%
        bool isAuthened = (PSUPICAuthor != null);
        verifyPanel.Visible = !isAuthened;
    %>
    <div id="verifyPanel" runat="server" class="row" style="margin-top: 70px;">
        <div class="col-md-12">
            <h2>Verification</h2>
            <div class="container">
                <div class="form-inline form-group">
                    <label class="sr-only" for="txtAuthorEmail">Email:</label>
                    <asp:TextBox ID="txtAuthorEmail" CssClass="form-control" placeholder="Author Email" runat="server"></asp:TextBox>
                    <label class="sr-only" for="txtPaperID">Paper ID:</label>
                    <asp:TextBox ID="txtPaperID" CssClass="form-control" placeholder="Easychair Paper ID" runat="server"></asp:TextBox>
                    <asp:Button ID="btnVerify" CssClass="btn btn-default" runat="server" Text="Verify" OnClick="btnVerify_Click" />
                </div>
                <asp:Label ID="txtLoginError" runat="server" CssClass="text-danger" Visible="false">Invalid Email or PaperID.</asp:Label>
            </div>
        </div>
    </div>

    <%
        authorPanel.Visible = isAuthened;
    %>
    <div id="authorPanel" runat="server" class="row" style="margin-top: 70px;">
        <div class="col-md-12">
            <h2>Author</h2>
            <div class="container" runat="server">
                <div class="row">
                    <div class="col-md-10">
                        <strong><%= PSUPICAuthor.FullName %></strong>
                        (<%= PSUPICAuthor.Email %>)
                        <%= PSUPICAuthor.Organization.Trim() %><%= !string.IsNullOrWhiteSpace(PSUPICAuthor.Country) ? "," : ""  %>
                        <%= PSUPICAuthor.Country %>
                    </div>
                    <div class="col-md-2">
                        <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-default" Text="Change Account" OnClick="btnLogout_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%
        if (isAuthened)
        {
            var regists = GetAuthorRegistrations();

            if (regists.Count() > 0)
            {
                invoicePanel.Visible = true;
                gvRegist.DataSource = regists;
                gvRegist.DataBind();
            }
            else
            {
                invoicePanel.Visible = false;
            }
        }
    %>
    <div id="invoicePanel" runat="server" class="row">
        <div class="col-md-12">
            <h2>Invoices</h2>
            <div class="container">
                <asp:GridView ID="gvRegist" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                        <asp:BoundField DataField="SubmissionID" HeaderText="SubmissionID" SortExpression="SubmissionID" />
                        <asp:BoundField DataField="OtherFields" HeaderText="OtherFields" SortExpression="OtherFields" />
                        <asp:BoundField DataField="Fee" HeaderText="Fee" SortExpression="Fee" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>


    <%
        string lastDateOfRegStr = "January 3, 2018"; //Resources.Resource.Schedule6Value;

        DateTime lastDateOfReg = DateTime.ParseExact(lastDateOfRegStr, "MMMM d, yyyy", System.Globalization.CultureInfo.CurrentCulture);
        bool outOfDate = (DateTime.Now.Date > lastDateOfReg.Date);

        if (isAuthened && !outOfDate)
        {
            registPanel.Visible = true;
        }
        else
        {
            registPanel.Visible = false;
        }
    %>
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
