<%@ Page Title="Organisation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="organisation.aspx.cs" Inherits="Conference2018.organisation" %>

<%@ Register Src="~/UserControls/ucPCChair.ascx" TagPrefix="uc1" TagName="ucPCChair" %>


<script runat="server">
    public class committee
    {
        public string title { get; set; }
        public string name { get; set; }
        public string otherInfo { get; set; }
        public string imgsrc { get; set; }
        public string css { get; set; }
        public string[] types { get; set; }
    };


    public List<committee> GetCommittees()
    {
        List<committee> committees = new List<committee>();
        committees.Add(new committee { css = "worawut", title = "Assoc. Prof. Dr.", name = "Worawut  Wisutmethangoon", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "general", "steering" } });

        committees.Add(new committee { css = "nuwan", title = "Asst. Prof. Dr.", name = "Nuwan Thapthiang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "prathana", title = "Asst. Prof. Dr.", name = "Prathana Kunnaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "pun", title = "Asst. Prof. Dr.", name = "Pun Thongchumnum ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "rattana", title = "Asst. Prof. Dr.", name = "Rattana  Wetprasit", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "sinchai", title = "Asst. Prof. Dr.", name = "Sinchai Kamolphiwong", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });

        /*pc-env-chair*/
        committees.Add(new committee { css = "pensiri", title = "Asst. Prof. Dr.", name = "Pensiri Akkajit", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6488<br />Email: pensiri.a(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });
        committees.Add(new committee { css = "siriwan", title = "Dr.", name = "Siriwan Ruamkaew", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6495<br/>Email: siriwan.ru(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });

        /*pc-env*/

        /*pc-com-chair*/
        committees.Add(new committee { css = "noppon", title = "Dr.", name = "Noppon Lertchuwongsa", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6561<br />Email: noppon.l(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-com", "chair" } });

        /*pc-com*/


        /*pc-ht-chair*/
        committees.Add(new committee { css = "chayanon", title = "Dr.", name = "Chayanon Phucharoen", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6838<br />Email: dr.chayanonphucharoen(at)gmail.com", types = new string[] { "pc", "pc-ht", "chair" } });

        /*pc-ht*/

        /*pc-ib-chair*/
        committees.Add(new committee { css = "supachai", title = "Dr.", name = "Supachai Jeangjai", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6293<br />Email: supachai.je(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-ib", "chair" } });

        /*pc-ib*/


        /*pc-il-chair*/
        committees.Add(new committee { css = "sombat", title = "Asst. Prof. Dr.", name = "Sombat Khruathong", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6603<br/>Email: sombat.k(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-il", "chair" } });

        /*pc-il*/


        committees.Add(new committee { css = "alban", title = "", name = "Alban Rousset ", otherInfo = "Uni.lu, Luxembourg", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { css = "alfredo", title = "", name = "Alfredo Huete", otherInfo = "UTS, Australia", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { css = "aziz", title = "", name = "Aziz Nanthaamornphong", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "ilian", title = "", name = "Ilian Assenov", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "intan", title = "", name = "Intan Hashimah Mohd", otherInfo = "USM, Malaysia", types = new string[] { "pc" } });
        committees.Add(new committee { css = "jirameth", title = "", name = "Jirameth  Rungruang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "kichan", title = "", name = "Kichan Park ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "kwankamon", title = "", name = "Kwankamon Dittakan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "lemia", title = "", name = "Lemia Louail", otherInfo = "UFAS, Algeria", types = new string[] { "pc" } });
        committees.Add(new committee { css = "marie", title = "", name = "Marie Laure Betbeder", otherInfo = "UBFC, France", types = new string[] { "pc" } });
        committees.Add(new committee { css = "sham", title = "", name = "Mohd Sham Othman", otherInfo = "USM, Malaysia", types = new string[] { "pc" } });

        committees.Add(new committee { css = "nuannut", title = "", name = "Nuannut Khieowan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });

        committees.Add(new committee { css = "pornpisanu", title = "", name = "Pornpisanu promsivapallop ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "sakib", title = "", name = "Sakib Jalil", otherInfo = "UCD, USA", types = new string[] { "pc" } });
        committees.Add(new committee { css = "shabbir", title = "", name = "Shabbir H. Gheewala ", otherInfo = "KMUTT, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "shan", title = "", name = "Shan Wei", otherInfo = "HEU, China", types = new string[] { "pc" } });

        committees.Add(new committee { css = "tatiyaporn", title = "", name = "Tatiyaporn Jarumaneerat", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "werapong", title = "", name = "Werapong Kertsin", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "ximing", title = "", name = "Ximing Yao", otherInfo = "SHU, China", types = new string[] { "pc" } });
        committees.Add(new committee { css = "yi", title = "", name = "Yi Wang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });

        committees.Add(new committee { css = "adisak", title = "", name = "Adisak  Intana", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "apichat", title = "", name = "Apichat Heednacram", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "arkom", title = "", name = "Arkom Wangmuang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "charoen", title = "", name = "Charoen Brahmritdhi", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "esther", title = "", name = "Esther Sangiamkul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "jinda", title = "", name = "Jinda Sawattawee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pcorganising" } });

        return committees;
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <img id="jumbotron" src="imgs/jumbotron3.png" />
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>General Chair</h2>
            <% 
                rptGeneral.DataSource = GetCommittees().Where(x => x.types.Contains("general")).OrderBy(x => x.name);
                rptGeneral.DataBind();
            %>
            <div class="container pc-card pc-counter-reset">
                <uc1:ucPCChair runat="server" ID="rptGeneral" />
                <%-- <asp:Repeater ID="rptGeneral" runat="server">
                    <HeaderTemplate>
                        <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-6">
                            <div class="org-member">
                                <span class="img <%# Eval("css") %>"></span>
                                <div class="content">
                                    <strong><%# Eval("title") %> <%# Eval("name") %></strong>
                                    <p><%# Eval("otherInfo") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>--%>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>Steering committee</h2>
            <% 
                rptSteering.DataSource = GetCommittees().Where(x => x.types.Contains("steering")).OrderBy(x => x.name);
                rptSteering.DataBind();
            %>
            <div class="container">
                <div class="container pc-card pc-counter-reset">
                    <uc1:ucPCChair runat="server" ID="rptSteering" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Program chair</h2>
            <p>For enquiries regarding paper submission, please contact Program Committee Chair:</p>

            <% 
                var pc = GetCommittees().Where(x => x.types.Contains("pc")).OrderBy(x => x.name);

                var envPC = pc.Where(x => x.types.Contains("pc-env"));

                rptEnvPCChair.DataSource = envPC.Where(x => x.types.Contains("chair"));
                rptEnvPCChair.DataBind();

                rptEnvPC.DataSource = envPC.Except(rptEnvPCChair.DataSource as IEnumerable<committee>);
                rptEnvPC.DataBind();
            %>
            <h3>
                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></h3>
            <div class="container pc-counter-reset">
                <div class="pc-card">
                    <uc1:ucPCChair runat="server" ID="rptEnvPCChair" />
                </div>
                <div class="pc-list">
                    <uc1:ucPCChair runat="server" ID="rptEnvPC" />
                </div>
            </div>

            <%
                var comPC = pc.Where(x => x.types.Contains("pc-com"));

                rptComPCChair.DataSource = comPC.Where(x => x.types.Contains("chair")); ;
                rptComPCChair.DataBind();

                rptComPC.DataSource = comPC.Except(rptComPCChair.DataSource as IEnumerable<committee>);
                rptComPC.DataBind();
            %>

            <h3>
                <asp:Literal runat="server" Text="<%$ Resources:Resource, Area2 %>" /></h3>
            <div class="container pc-counter-reset">
                <div class="pc-card">
                    <uc1:ucPCChair runat="server" ID="rptComPCChair" />
                </div>
                <div class="pc-list">
                    <uc1:ucPCChair runat="server" ID="rptComPC" />
                </div>
            </div>

            <%--            <h3>Hospitality and Tourism</h3>
            <p class="tba">To Be Announced</p>

            <h3>Environmental Technology and Management</h3>
            <p class="tba">To Be Announced</p>

            <h3>International Business</h3>
            <p class="tba">To Be Announced</p>

            <h3>Information Technology</h3>
            <p class="tba">To Be Announced</p>

            <h3>International Language and Culture Teaching</h3>
            <p class="tba">To Be Announced</p>--%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>Organising Committee Chairs</h3>

            <% 
                rptOrganising.DataSource = GetCommittees().Where(x => x.types.Contains("organising")).OrderBy(x => x.name);
                rptOrganising.DataBind();
            %>
            <div class="container pc-list" style="counter-reset: line;">
                <uc1:ucPCChair runat="server" ID="rptOrganising" />
            </div>
        </div>
    </div>
</asp:Content>
