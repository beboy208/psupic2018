<%@ Page Title="Location" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="Conference2018.location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Map to PSU, Phuket</h2>
            <div class="container">
                <p>
                    <%-- AIzaSyCTyBvxbNjN1tnMKpONd-r32JyZ7ACaJTs --%>
                </p>
                <iframe class="center-block" frameborder="0" style="border: 0; width: 80%; height: 300px"
                    src="https://www.google.com/maps/embed/v1/place?q=%E0%B8%95%E0%B8%B6%E0%B8%81%E0%B8%AD%E0%B8%98%E0%B8%B4%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9A%E0%B8%94%E0%B8%B5%E0%B8%A1%E0%B8%AD.%E0%B8%A0%E0%B8%B9%E0%B9%80%E0%B8%81%E0%B9%87%E0%B8%95&key=AIzaSyCTyBvxbNjN1tnMKpONd-r32JyZ7ACaJTs" allowfullscreen></iframe>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>PSU, Phuket diagram</h2>
            <div class="container">
                <p></p>
                <img src="./imgs/psupktmap2018.jpg" class="img-responsive center-block" />
            </div>
        </div>
        <div class="col-md-12">
            <h2>Video Introduction to PSU Phuket Campus</h2>
            <br />
            <embed src="imgs/intro_psu_pkt.mp4" class="center-block" width="560" height="315" autostart="0" />
        </div>
        <div class="row">
            <div class="col-md-12">
                <h2>All about Phuket</h2>
                <div class="container">
                    <p style="background-image: url('https://www.tourismthailand.org/fileadmin/upload_img/about_tat/img_1468295874.jpg'); background-repeat: no-repeat; background-position: 0 0; background-size: 100px; padding-left: 110px">
                        Phuket features a dizzying array of accommodation options ranging from luxury hotels to family friendly beach resorts, 
                secluded island villas to budget hotels. With so many types of accommodation available in Phuket, 
                you may actually have a challenging time trying to decide which is the best to suit your needs; 
                it may be helpful to learn about the attractions (or lack thereof) near each of the beaches in Phuket 
                and then narrow your search once you have a couple different beaches in mind. 
                For more hotels please visit <a href="https://www.tourismthailand.org/About-Thailand/Destination/Phuket" target="_blank">www.tourismthailand.org</a>
                    </p>
                    <iframe class="center-block" width="560" height="315" src="https://www.youtube.com/embed/skDfo3cMrJE?rel=0" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col-md-12">
                <h2>Recommended Accommodation</h2>
                <div class="container">
                    <br>
                    <ul style="list-style: none">
                        <li>
                            <h3>PSU LODGE</h3>
                            <div class="container">
                                <p>PSU Lodge is a limited service hotel and it came from the University’s idea which aims to facilitate the customers by offering clean and safe rooms especially the price is affordable. The lodge is restfully located in the heart of Kathu district and suitable place to stay.</p>
                                <p><strong>Hotel Address:</strong> 80 Moo 1 Vichisongkram Rd. Kathu, Phuket, 83120 Thailand </p>
                                <p><strong>Travel Distance:</strong>  On Campus</p>
                                <table>
                                    <tr>
                                        <td><strong>Contact: </strong></td>
                                        <td>Tel +(66) 76 276 300</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>E-mail: <a href="mailto:psulodge@gmail.com">psulodge@gmail.com</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Facebook:  <a href="http://www.facebook.com/psulodge">www. facebook.com/psulodge</a></td>
                                    </tr>
                                </table>

                                <p><strong>Roomrate</strong></p>
                                <table style="width: 80%">
                                    <tr>
                                        <td style="width: 30%">Standard Room</td>
                                        <td style="width: 70%">1,000/night/room (with set breakfast)</td>
                                    </tr>
                                    <tr style="background-color: #edeef8">
                                        <td>Deluxe Double Room</td>
                                        <td>1,500/night/room (with set breakfast)</td>
                                    </tr>
                                    <tr>
                                        <td>Deluxe Twin Room</td>
                                        <td>1,700/night/room (with set breakfast)</td>
                                    </tr>
                                    <tr style="background-color: #edeef8">
                                        <td>Suite Room</td>
                                        <td>2,000/night/room (with set breakfast)</td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li>
                            <h3>PEARL HOTEL</h3>
                            <div class="container">
                                <p>
                                    Welcome to Pearl Hotel, the original and exclusive city hotel in the heart of Phuket Town center.
Discover an extraordinary interior decoration like no others in Phuket island with endless counts of shells and pearl shells, giving a unique theme to this fabulous city hotel.
                                </p>
                                <p>The location, like a precious gem that gave the hotel its name, is a haven of luxury and comfort, with less than 10 minutes walking distance from the shopping areas and tourist attractions in Phuket town.</p>
                                <p>Pearl Hotel offers 212 neat and comfortably appointed rooms, including nine spacious suites, with spectacular city view, mountain view and view of immaculate sea in the south of Phuket island.</p>
                                <p>Dining at the Pearl Hotel is always a memorable experience. The Rooftop Chinese restaurant offers excellent authentic Cantonese Chinese dishes in a luxurious yet comfortable setting on the top floor of the hotel overlooking the dazzling city and the breathtaking sea. The Coffee shop is famous for its local Phuket dishes, Thai and international favourites.</p>
                                <p><strong>Hotel Address:</strong> 42 Montri Rd. Muang, Phuket 83000 Thailand </p>
                                <p><strong>Travel Distance:</strong>  7.0 Kms. to PSU</p>

                                <table>
                                    <tr>
                                        <td><strong>Contact: </strong></td>
                                        <td>Tel +(66) 76 211 044<br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Fax +(66) 76 319 017</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>E-mail: <a href="mailto:info@pearlhotel.co.th">info@pearlhotel.co.th</a></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Website: <a href="http://www.arecaresort.com">www.arecaresort.com</a></td>
                                    </tr>
                                </table>
                                <p><strong>Roomrate</strong></p>
                                <table style="width: 80%">
                                    <tr>
                                        <td style="width: 30%">Pearl Room</td>
                                        <td style="width: 70%">1,500 THB/night/room  *Inclusive of Breakfast</td>
                                    </tr>
                                </table>
                            </div>
                        </li>
                        <li>
                            <h3>ARECA RESORT & SPA</h3>
                            <div class="container">
                                <p>Welcome to Areca Resort & Spa where you can enjoy the ultimate experience amid nature and cultural inspiration in the heart of Phuket. Areca, another name for a tropical Asian palm (Betel Nut Palm or Maksong in Thai), is a new lifestyle built in elegant Contemporary Balinese style amid a lush tropical garden of Betel Palms and various trees.</p>
                                <p>From the first step when you enter the hotel, you can feel the zephyr wind flowing and smell of ancient brick-red of which each was handmade and baked in charcoal. So every brick that has been used in Areca Resort & Spa has its own strength and uniqueness. Most of the hotel is decorated with ancient brick-red in contemporary Balinese style and stucco and developed with both a sacred and serene ambiance.</p>
                                <p>At Areca Resort & Spa, we provide a full service of Spa & Massage in YAREY, a spacious spa room specially designed for tranquility and relaxation, luxurious Outdoor Swimming Pool with Jacuzzi & Pool Bar in serene garden ambience, dining area in beautiful Contemporary Balinese style of PENA Restaurant, and a grand lounge in the Lobby, with 24-hour reception and Wi-fi internet access to all rooms. With the richness of cultural inspiration and great hospitality in the hotel, your luxurious stay at Areca Resort & Spa will induce a pleasant sense of wellbeing and the most memorable stay, like nowhere else in Phuket.</p>
                                <p><strong>Hotel Address:</strong> 96/1 moo 7, Wichitsongkram Rd. Kathu, Phuket, 83120 Thailand </p>
                                <p><strong>Distance:</strong>  650 metres to PSU</p>
                                <table>
                                    <tr>
                                        <td><strong>Contact: </strong></td>
                                        <td>Tel +(66) 76 319 018-9</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Fax +(66) 76 319 017</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>Website:  <a href="http://www.arecaresort.com">www. arecaresort.com</a></td>
                                    </tr>
                                </table>

                                <p><strong>Roomrate</strong></p>
                                <table style="width: 80%">
                                    <tr>
                                        <td style="width: 30%" rowspan="2">Deluxe Room (single /double)</td>
                                        <td style="width: 70%">2,200 THB /night/room * Inclusive of  Breakfast</td>
                                    </tr>
                                    <tr>
                                        <td>2,000 THB /night/room  * None Inclusive of Breakfast </td>
                                    </tr>
                                    <tr style="background-color: #edeef8">
                                        <td rowspan="2">Extra Bed  </td>
                                        <td>1,000 THB /night/room *Inclusive of Breakfast</td>
                                    </tr>
                                    <tr style="background-color: #edeef8">
                                        <td>800 THB /night/room *None Inclusive of Breakfast</td>
                                    </tr>
                                    <tr>
                                        <td>Villa  </td>
                                        <td>4,500 THB/night/villa  *Inclusive of Breakfast (For adults 4 person  and child 1 person)</td>
                                    </tr>

                                </table>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
</asp:Content>
