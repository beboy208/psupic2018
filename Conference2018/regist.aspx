﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="regist.aspx.cs" Inherits="Conference2018.regist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Registration</h2>
            <div class="container">
                <h3>Registration Fee</h3>
                <p style="color: red">** The registration fee excludes any transfer or exchange rate fee.</p>
                <div class="container">
                    <table align="left" cellspacing="10" cellpadding="5" border="1">
                        <tbody>
                            <tr>
                                <th width="20%" valign="top" bgcolor="#d8e3f6">
                                    <p align="center"><strong>Type</strong></p>
                                </th>
                                <th width="25%" valign="top" bgcolor="#d8e3f6">
                                    <p align="center"><strong>Period</strong></p>
                                </th>
                                <th width="40%" valign="top" bgcolor="#d8e3f6">
                                    <p align="center"><strong>Price</strong></p>
                                </th>
                            </tr>
                            <tr>
                                <td width="20%" valign="top">
                                    <p>&nbsp; Early Bird Registration </p>
                                </td>
                                <td width="25%" valign="top">
                                    <p>&nbsp; February 1-15, 2018<strong> </strong></p>
                                </td>
                                <td width="40%" valign="top">
                                    <p>&nbsp; 6,600THB / 200 US$ per person<font color="#FF0000">** </font> </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="20%" valign="top">
                                    <p>&nbsp; Regular Registration </p>
                                </td>
                                <td width="25%" valign="top">
                                    <p>&nbsp; February 16-28, 2018 </p>
                                </td>
                                <td width="40%" valign="top">
                                    <p>&nbsp; 8,200THB / 250 US$ per person<font color="#FF0000">** </font> </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="20%" valign="top">
                                    <p>&nbsp; Late/On-site Registration</p>
                                </td>
                                <td width="25%" valign="top">
                                    <p>&nbsp; March 1-12, 2018</p>
                                </td>
                                <td width="40%" valign="top">
                                    <p>&nbsp; 10,000THB / 300 US$ per person<font color="#FF0000">** </font> </p>
                                </td>
                            </tr>
                            <tr>
                                <td width="20%" valign="top">
                                    <p>&nbsp; Accompanying Person(s):</p>
                                </td>
                                <td colspan="2" width="65%" valign="top">
                                    <p>&nbsp;5,000THB / 150 US$ per person<font color="#FF0000">** </font><strong> </strong></p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <br />
                <h3>Payment Method</h3>
                <div class="container">
                    <ol>
                        <li>All participants are required to register and settle the registration fee by February 28, 2018.</li>
                        <li>The registration fees are net rates excluding any transfer or exchange rate fee.</li>
                        <li>The registration fee is non-refundable for any cancellation.</li>
                        <li>Accepted extended abstract paper that are registered without payment settlement will not be published in the proceedings.</li>
                        <li>The registration fee must be settled to the following accounts.
                                        <div class="container">
                                            <ul>
                                                <li><strong>Bank:</strong> Siam Commercial Bank, Prince of Songkla University, Phuket Campus Branch.</li>
                                                <li><strong>Account name:</strong> Prince of Songkla University Account.</li>
                                                <li><strong>Account No.:</strong> 857-200562-3</li>
                                                <li><strong>Telex No.:</strong> 20455 SIAMFX TH</li>
                                                <li><strong>Swift Code:</strong> SICOTHBK</li>
                                            </ul>
                                        </div>
                        </li>
                    </ol>
                    <strong>Remarks</strong>
                    <ol>
                        <li>After completing the payment, please email the payment transfer document to 
                                        <a href="mailto:pannee.pe@phuket.psu.ac.th">Ms. Pannee Phetlum</a>
                            Email: <a href="mailto:pannee.pe@phuket.psu.ac.th">pannee.pe(at)phuket.psu.ac.th</a>
                        </li>
                        <li>The original registration form and the payment transfer document are required to present upon registration at the conference venue.</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
