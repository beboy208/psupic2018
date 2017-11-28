<%@ Page Title="Organisation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="organisation.aspx.cs" Inherits="Conference2018.organisation" %>

<script runat="server">
    public class committee
    {
        public string name { get; set; }
        public string otherInfo { get; set; }
        public string imgsrc { get; set; }
        public string css { get; set; }
        public string[] types { get; set; }
    };


    public List<committee> GetCommittees()
    {
        List<committee> committees = new List<committee>();
        committees.Add(new committee { css = "worawut", imgsrc = "", name = "Worawut  Wisutmethangoon", otherInfo = "PSU, Thailand", types = new string[] { "general", "steering" } });

        committees.Add(new committee { css = "nuwan", imgsrc = "", name = "Nuwan Thapthiang", otherInfo = "PSU, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "pun", imgsrc = "", name = "Pun Thongchumnum ", otherInfo = "PSU, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "prathana", imgsrc = "", name = "Prathana Kunnaovakun", otherInfo = "PSU, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "sinchai", imgsrc = "", name = "Sinchai Kamolphiwong", otherInfo = "PSU, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { css = "rattana", imgsrc = "", name = "Rattana  Wetprasit", otherInfo = "PSU, Thailand", types = new string[] { "steering" } });

        committees.Add(new committee { css = "alban", imgsrc = "", name = "Alban Rousset ", otherInfo = "Uni.lu, Luxembourg", types = new string[] { "pc" } });
        committees.Add(new committee { css = "alfredo", imgsrc = "", name = "Alfredo Huete", otherInfo = "UTS, Australia", types = new string[] { "pc" } });
        committees.Add(new committee { css = "aziz", imgsrc = "", name = "Aziz Nanthaamornphong", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "ilian", imgsrc = "", name = "Ilian Assenov", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "intan", imgsrc = "", name = "Intan Hashimah Mohd", otherInfo = "USM, Malaysia", types = new string[] { "pc" } });
        committees.Add(new committee { css = "jirameth", imgsrc = "", name = "Jirameth  Rungruang", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "kichan", imgsrc = "", name = "Kichan Park ", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "kwankamon", imgsrc = "", name = "Kwankamon Dittakan", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "lemia", imgsrc = "", name = "Lemia Louail", otherInfo = "University of Sétif 1, Algeria", types = new string[] { "pc" } });
        committees.Add(new committee { css = "marie", imgsrc = "", name = "Marie Laure Betbeder", otherInfo = "UBFC, France", types = new string[] { "pc" } });
        committees.Add(new committee { css = "sham", imgsrc = "", name = "Mohd Sham Othman", otherInfo = "USM, Malaysia", types = new string[] { "pc" } });
        committees.Add(new committee { css = "noppon", imgsrc = "", name = "Noppon Lertchuwongsa", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "nuannut", imgsrc = "", name = "Nuannut Khieowan", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "pensiri", imgsrc = "", name = "Pensiri Akkajit", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "pornpisanu", imgsrc = "", name = "Pornpisanu promsivapallop ", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "sakib", imgsrc = "", name = "Sakib Jalil", otherInfo = "UCD, USA", types = new string[] { "pc" } });
        committees.Add(new committee { css = "shabbir", imgsrc = "", name = "Shabbir H. Gheewala ", otherInfo = "KMUTT, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "shan", imgsrc = "", name = "Shan Wei", otherInfo = "HEU, China", types = new string[] { "pc" } });
        committees.Add(new committee { css = "siriwan", imgsrc = "", name = "Siriwan Ruamkaew", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "tatiyaporn", imgsrc = "", name = "Tatiyaporn Jarumaneerat", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "werapong", imgsrc = "", name = "Werapong Kertsin", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { css = "ximing", imgsrc = "", name = "Ximing Yao", otherInfo = "SHU, China", types = new string[] { "pc" } });
        committees.Add(new committee { css = "yi", imgsrc = "", name = "Yi Wang", otherInfo = "PSU, Thailand", types = new string[] { "pc" } });

        committees.Add(new committee { css = "adisak", imgsrc = "", name = "Adisak  Intana", otherInfo = "PSU, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "apichat", imgsrc = "", name = "Apichat Heednacram", otherInfo = "PSU, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "arkom", imgsrc = "", name = "Arkom Wangmuang", otherInfo = "PSU, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "charoen", imgsrc = "", name = "Charoen Brahmritdhi", otherInfo = "PSU, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "esther", imgsrc = "", name = "Esther Sangiamkul", otherInfo = "PSU, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { css = "jinda", imgsrc = "", name = "Jinda Sawattawee", otherInfo = "PSU, Thailand", types = new string[] { "pcorganising" } });

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
            <div class="container">
                <asp:Repeater ID="rptGeneral" runat="server">
                    <HeaderTemplate>
                        <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-6">
                            <div class="org-member">
                                <span class="img <%# Eval("css") %>"></span>
                                <div class="content">
                                    <strong><%# Eval("name") %></strong>
                                    <p><%# Eval("otherInfo") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
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
                <asp:Repeater ID="rptSteering" runat="server">
                    <HeaderTemplate>
                        <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-6">
                            <div class="org-member">
                                <span class="img <%# Eval("css") %>"></span>
                                <div class="content">
                                    <strong><%# Eval("name") %></strong>
                                    <p><%# Eval("otherInfo") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Program chair</h2>
            <p>For enquiries regarding paper submission, please contact Program Committee Chair:</p>
            <% 
                rptPCChair.DataSource = GetCommittees().Where(x => x.types.Contains("pc")).OrderBy(x => x.name);
                rptPCChair.DataBind();
            %>
            <div class="container">
                <asp:Repeater ID="rptPCChair" runat="server">
                    <HeaderTemplate>
                        <div class="row" style="counter-reset: line;">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-12">
                            <div class="org-member-list">
                                <span class="img <%# Eval("css") %>"></span>
                                <div class="content">
                                    <strong><%# Eval("name") %></strong>
                                    <p><%# Eval("otherInfo") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
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
            <div class="container">
                <asp:Repeater ID="rptOrganising" runat="server">
                    <HeaderTemplate>
                        <div class="row" style="counter-reset: line;">
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="col-md-12">
                            <div class="org-member-list">
                                <span class="img <%# Eval("css") %>"></span>
                                <div class="content">
                                    <strong><%# Eval("name") %></strong>
                                    <p><%# Eval("otherInfo") %></p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <FooterTemplate>
                        </div>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</asp:Content>