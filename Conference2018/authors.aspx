<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="authors.aspx.cs" Inherits="Conference2018.authors" %>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="authors.aspx.cs" Inherits="Conference2018.authors" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <title>PSU PIC 2018 - Authors</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body style="padding-top: 80px;">
    <div class="navbar navbar-fixed-top" style="background-color: #3b5998">
        <div class="navbar-header">
            <div class="navbar-brand">
                <a id="psu50th" runat="server" href="http://www.psu.ac.th">
                    <img src="~/imgs/50th-logo_s60.png" alt="PSU" runat="server" /></a>
                <a id="eventtitle" runat="server" href="~/" style="color: white">PSU PIC 2018</a>
            </div>
        </div>
    </div>
    <div class="container body-content">
        <div class="row" style="display: block">
            <%
                var authors = Session["authors"] as List<Conference2018.Models.Author>;

                if (authors != null && authors.Count() > 0)
                {
                    if (authors.Count() == 1)
                    {
                        //Render QR Code
                        var author = authors.First();
            %>
            <div id="QRCode">
                <img src="<%= authors[0].QRCodePath %>" class="center-block" style="width: 60%; max-width: 300px" />
                <div class="center-block" style="width: 80%">
                    <strong>Code:</strong> <%= author.ID %><br />
                    <strong>Name:</strong> <%= author.FullName %><br />
                    <strong>Email:</strong> <%= author.Email %><br />
                    <strong>Organization:</strong> <%= author.Organization %><br />
                    <%
                        //Get author submissions, เอาด่วนๆ จริงๆ ควรไปสร้างเป็นข้อมูลใน ViewModel
                        var db = new Conference2018.Datasources.PSUPICEntities1();
                        var subIDs = db.Authors.Where(au => au.Code == author.ID && au.SubmissionID.HasValue).Select(au => au.SubmissionID);
                        var submissions = db.Submissions.Where(sub => subIDs.Contains(sub.Id));
                        if (submissions != null && submissions.Count() > 0)
                        {
                    %>
                    <div id="submissions">
                        <strong>Submission:</strong>
                        <div>
                            <%
                                foreach (var sub in submissions)
                                {
                            %>
                            <p><%= sub.PaperCode %>) <%= sub.Title %> (<%= sub.Area.AreaNameEN %>)</p>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <%}
                    %>
                </div>
            </div>
            <%
                }
                else
                {
                    //Show all authors with less info
                    //No QR Code
            %>
            <div id="authors" class="center-block">
                <h3>Authors</h3>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <%--<th>Code</th>--%>
                            <th style="min-width: 200px; width: 30%">Name</th>
                            <th>Email</th>
                            <th>Organization</th>
                            <th>Country</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            foreach (var author in authors)
                            {
                        %>
                        <tr>
                            <%--<td><%= author.ID %></td>--%>
                            <td><%= author.FullName %></td>
                            <td><%= author.Email %></td>
                            <td><%= author.Organization %></td>
                            <td><%= author.Country %></td>
                            <td>
                                <a href="?code=<%= author.ID %>"
                                    class="btn btn-primary">
                                    <span class="glyphicon glyphicon-qrcode"></span>
                                </a>
                            </td>
                        </tr>
                        <%
                            }

                        %>
                    </tbody>
                </table>
            </div>
            <%
                    }
                }
                else
                {
            %>
            <div id="notfound" class="center-block">
                Not found.
            </div>
            <%}
            %>
        </div>
    </div>
</body>
</html>
