﻿<%@ Page Title="Phuket Sightseeing Tour" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="sightseeing.aspx.cs" Inherits="Conference2018.sightseeing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <%--<div class="row">
        <div class="col-md-12">
            <h2>Phuket Sightseeing Tour (March 11<sup>th</sup>, 2018)</h2>
            <div class="container">
                <p class="tba">To Be Announced</p>
            </div>
        </div> 
    </div>--%>

    <div class="row">
        <div class="col-md-12">
            <h2>Phuket Sightseeing Tour (March 11<sup>th</sup>, 2018)</h2>
            <div class="container">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th width="15%" valign="top" bgcolor="#d8e3f6">
                                <p align="center"><strong>Time</strong></p>
                            </th>
                            <th width="45%" valign="top" bgcolor="#d8e3f6">
                                <p align="center"><strong>Details</strong></p>
                            </th>
                            <th width="40%" valign="top" bgcolor="#d8e3f6">
                                <p align="center"><strong>Notes</strong></p>
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>12:00 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">
                                    Departure from hotel as the following:
                                </p>
                                <ul>
                                    <li>1<sub>st</sub> pick-up point: Pearl Hotel (12:00 pm)</li>
                                    <li>2<sub>nd</sub> nd pick-up point: Areca Resort and Spa/Baan Maksong Resort and Spa (time: TBC)</li>
                                    <li>3<sub>rd</sub> rd pick-up point: PSU Lodge (time: TBC)</li>
                                </ul>
                            </td>
                            <td valign="top">
                                <p align="left">
                                <p>
                                    Departure times from the 2<sub>nd</sub> and 3<sub>rd</sub> pick-up points will
depend on traffic conditions.
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>1:00 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Meeting point: 1<sub>st</sub> floor, President’s Office Building</p>
                            </td>
                            <td valign="top">
                                <p align="left"></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>1:15 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">PSU campus tour (2 groups, 10-15 minutes at each place)</p>
                                <ol>
                                    <li>PSU Airlines</li>
                                    <li>AMTEC</li>
                                </ol>
                            </td>
                            <td valign="top" rowspan="2">
                                <p align="center">
                                    <img src="imgs/psu.jpg" width="50%" />
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>1:45 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">
                                    Depart from PSU Phuket (Meeting point: 1<sub>st</sub> floor, President’s Office Building)
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>2:15-3:00 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Arrive at Wat Chalong (Chalong Temple)</p>
                            </td>
                            <td valign="top">
                                <p align="center">
                                    <p align="center">
                                        <img src="imgs/Chalong-Temple-Internet.jpg" width="50%" />
                                    </p>
                                    More information please kindly find this link
                            <a href="http://www.phuket.com/island/wat-chalong.htm">://www.phuket.com/island/wat-chalong.htm</a>
                                </p>

                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>3:05 pm </strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Depart from Wat Chalong to Nai Harn Beach</p>
                            </td>
                            <td valign="top">
                                <p align="center">
                                    <img src="imgs/Winmill1-Ruangrat.jpg" width="50%" />
                                </p>
                                <p align="left">More information please kindly find this link <a href="https://www.tourismthailand.org/Attraction/Hat-Nai-Han--661">https://www.tourismthailand.org/Attraction/Hat-Nai-Han--661</a></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>4:00-4:45 pm </strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Arrive at Nai Harn Beach (approx. 45 mins. tour)</p>
                            </td>

                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>4:50 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Depart from Nai Harn Beach to Promthep Cape</p>
                            </td>
                            <td valign="top" rowspan="2">
                                <p align="center">
                                    <img src="imgs/Promthep1-Ruangrat.jpg" width="50%" />
                                </p>
                                <p align="left">
                                    More information please kindly find this link

                                    <a href="http://phuketairportthai.com/en/popular-destinations/21/laem-phromthep-phuket">://phuketairportthai.com/en/popular-destinations/21/laem-phromthep-phuket</a>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>5:15-6:00 pm </strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Arrive at Promthep Cape (approx. 45 mins. tour)</p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>6:05 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Depart from Promthep Cape</p>
                            </td>
                            <td valign="top">
                                <p align="left"></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>6:45-7:45 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Dinner at Phuket Fish Market Restaurant</p>
                            </td>
                            <td valign="top">
                                <p align="left"></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>8:05 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Depart to Ta Laad Yai Walking Street</p>
                            </td>
                            <td valign="top" rowspan="2">
                                <p align="center">
                                    <img src="imgs/OldTown-Internet.jpg" width="50%" />
                                </p>
                                <p align="left">
                                    More information please kindly find this link
                                    <a href="http://www.phuket.com/phuket-magazine/phuket-walking-street.htm">http://www.phuket.com/phuket-magazine/phuket-walking-street.htm</a>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>8:30 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Arrive at Ta Laad Yai Walking Street (Phuket Town)</p>
                            </td>

                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center"><strong>9:30 pm</strong></p>
                            </td>
                            <td valign="top">
                                <p align="left">Depart from Phuket Town</p>
                            </td>
                            <td valign="top">
                                <p align="left"></p>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p align="center">
                                    <strong>10:00 pm
                                    <br>
                                        (approx.)</strong>
                                </p>
                            </td>
                            <td valign="top">
                                <p align="left">Return to hotels</p>
                            </td>
                            <td valign="top">
                                <p align="left"></p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>