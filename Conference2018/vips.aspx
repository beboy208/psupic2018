<%@ Page Title="VIPs" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="vips.aspx.cs" Inherits="Conference2018.vips" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeaderContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container body-content">
        <div class="row" style="display: block">
            <%
                var vips = Session["vips"] as IQueryable<Conference2018.Datasources.VIPMember>;

                if (vips != null && vips.Count() > 0)
                {
                    vips = vips.OrderBy(v => v.VIPOrder).ThenBy(v => v.VIPFullName);
                    foreach (var v in vips)
                    {
                        if (v.VIPFullName.ToLower().Contains("untitle"))
                            v.VIPFullName = "";
                    }

                    if (vips.Count() == 1)
                    {
                        //Render QR Code
                        var vip = vips.First();
            %>
            <div id="QRCode">
                <img src="<%= vip.VIPQRCodePath %>" class="center-block" style="width: 60%; max-width: 300px" />
                <div class="center-block" style="width: 80%">
                    <strong>Code:</strong> <%= vip.VIPCode %><br />
                    <strong>Name:</strong> <%= vip.VIPFullName %><br />
                    <strong>Organization:</strong> <%= vip.VIPDescription %><br />
                    <%
                        if (vip.VIPTypeID.Trim().ToLower() == "k")
                        { %>

                    <strong>Keynote Title:</strong> <%= vip.VIPMission %><br />
                    <% }
                    %>
                </div>
            </div>
            <%
                }
                else
                {
                    //Show all vips with less info
                    //No QR Code
            %>
            <div id="authors" class="center-block">
                <h3>VIPs</h3>
                <!-- Render แบบ Card --> 
                <!--
                <%
                    foreach (var v in vips)
                    {
                %>
                <div class="col-md-6">
                    <div class="row" style="border: solid 1px gray; margin: 0px 0px 25px 0; padding: 5px;">
                        <div class="col-md-4">
                            <a href="?code=<%= v.VIPCode %>">
                                <img src="<%= v.VIPQRCodePath %>" class="center-block" style="max-height: 150px;" />
                            </a>
                        </div>
                        <div class="col-md-8" style="vertical-align: top;">
                            <strong><%= v.VIPFullName %></strong><br />
                            <%= v.VIPDescription %>
                        </div>
                    </div>
                </div>
                <%
                    }

                %>
                    -->

                <!-- Render แบบ ตาราง -->
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <%--<th>Code</th>--%>
                            <th style="min-width: 200px; width: 30%">Name</th>
                            <th>Position/Organization</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            foreach (var v in vips)
                            {
                        %>
                        <tr>
                            <%--<td style="padding-right: 30px;"><%= v.VIPCode %></td>--%>
                            <td><%= v.VIPFullName %></td>
                            <td><%= v.VIPDescription %></td>
                            <td>
                                <a href="?code=<%= v.VIPCode %>"
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
</asp:Content>
