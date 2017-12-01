<%@ Page Title="Organisation" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="organisation.aspx.cs" Inherits="Conference2018.organisation" %>

<%@ Register Src="~/UserControls/ucPCChair.ascx" TagPrefix="uc1" TagName="ucPCChair" %>


<script runat="server">

    public enum ctitle
    {
        //มาตรฐานอเมริกา
        //ศาสตราจารย์
        [Display(Name = "Prof. Dr.")]
        ProfDr,

        [Display(Name = "Prof.")]
        Prof,

        //รองศาสตราจารย์
        [Display(Name = "Assoc. Prof. Dr.")]
        AssocProfDr,

        [Display(Name = "Assoc. Prof. ")]
        AssocProf,

        //ผู้ช่วยศาสตาจารย์
        [Display(Name = "Asst. Prof. Dr.")]
        AsstProfDr,
        
        [Display(Name = "Asst. Dr.")]
        AsstDr,
        
        [Display(Name = "Dr.")]
        Dr,

        [Display(Name = "Mr.")]
        Mr,

        [Display(Name = "Mrs.")]
        Mrs,

        [Display(Name = "")]
        none
    };

    public class committee
    {
        private string _css;

        public ctitle titleEnum { get; set; }
        public string title
        {
            get
            {
                var attribute = typeof(ctitle).GetMember(titleEnum.ToString()).First().GetCustomAttributes(typeof(DisplayAttribute), true).GetValue(0);

                return (attribute as System.ComponentModel.DataAnnotations.DisplayAttribute).Name;

                //return
                //    ((System.ComponentModel.DataAnnotations.DisplayAttribute)
                //    titleEnum.GetType().GetMember(titleEnum.ToString()).First().GetCustomAttributes(typeof(DisplayAttribute), true).GetValue(0)).Name;

            }
        }
        public string name { get; set; }
        public string otherInfo { get; set; }
        public string imgsrc { get; set; }
        public string css
        {
            get
            {
                if (string.IsNullOrWhiteSpace(_css))
                    _css = this.name.Split(' ')[0].ToLower();
                return _css;
            }
            set { _css = value; }
        }
        public string[] types { get; set; }
    };


    public List<committee> GetCommittees()
    {


        List<committee> committees = new List<committee>();
        /*general*/
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Worawut  Wisutmethangoon", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "general", "steering" } });

        /*steering*/
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Nuwan Thapthiang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Prathana Kunnaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Pun Thongchumnum ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Rattana  Wetprasit", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering", "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Sinchai Kamolphiwong", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });

        /*pc-env-chair*/
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Pensiri Akkajit", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6488<br />Email: pensiri.a(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Siriwan Ruamkaew", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6495<br/>Email: siriwan.ru(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });

        /*pc-env, te*/
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Shabbir H. Gheewala ", otherInfo = "King Mongkut's University of Technology Thonburi, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Alfredo Huete", otherInfo = "University of Technology, Sydney City Campus, Australia", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Raymond J. Ritchie", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Kiyota Hashimoto", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Tom DeSutter", otherInfo = "Soil Science Department, North Dakota State University", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Mohd Sham Othman", otherInfo = "Diagnostic & Applied Health Sciences", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Chatinee Boonyachai", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Weerapong Keodsin", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Thanita Arreerob", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Arree Choodum", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Danai Thipmanee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Vipawee Dummee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Tanwa Arpornthip", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kritana Phutsakorn", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Supatsara Kunsri", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wilasinee Sriprom", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wadcharawadee Limsakul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Sangdao Wongsai", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Siriwan Ruamkeaw", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Rawee Rattanakom", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Sakshin Bunthawin", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Worawit Wongniramaikul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Naiyana Srichai", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });

        /*pc-com-chair*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Noppon Lertchuwongsa", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6561<br />Email: noppon.l(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-com", "chair" } });

        /*pc-com, COC*/
        committees.Add(new committee { titleEnum = ctitle.AsstDr, name = "Aziz Nanthaamornphong", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Jirawat Thaenthong", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "JVoravika Wattanasoontorn", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kwankamon Dittakan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Adisak Intana", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Winai Nadee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kanjana Thongglin", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nattapong Tongtep", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Korawit Prutsachainimmit", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kitsiri Chochiang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nawanol Theera-Ampornpunt", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AsstDr, name = "Warodom Weeraphun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Apichart Heednakam", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chakadkit Tenchaikul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kittisin Silanon", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Komsan Kanjanasit", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wasimon Panichpattanakul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Thitinan Kliangsuwan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Kullawat Chaowanawatee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Amarin Deemakarn", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Thammaratt Samitalampa", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Phatcharee Thepnimit", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Sakib Jalil", otherInfo = "University of California Davis, CA, USA", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Lemia Louail", otherInfo = "Computer Science Department, Faculty of Sciences, University of Sétif 1, Algeria.", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProf, name = "Marie Laure Betbeder", otherInfo = "Universite de Bourgogne France-comte, France", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Alban Rousset", otherInfo = "University of Luxembourg", types = new string[] { "pc", "pc-com" } });


        /*pc-ht-chair*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chayanon Phucharoen", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6838<br />Email: dr.chayanonphucharoen(at)gmail.com", types = new string[] { "pc", "pc-ht", "chair" } });

        /*pc-ht, FHT*/
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = " Pornpisanu Promsivapallop", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });


        /*pc-ib-chair*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Supachai Jeangjai", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6293<br />Email: supachai.je(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-ib", "chair" } });

        /*pc-ib*/


        /*pc-il-chair*/
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Sombat Khruathong", otherInfo = "Prince of Songkla University, Thailand<br />Tel: (+66)-7627-6603<br/>Email: sombat.k(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-il", "chair" } });

        /*pc-il*/

        /*
        committees.Add(new committee { title = "", name = "Alban Rousset ", otherInfo = "Uni.lu, Luxembourg", types = new string[] { "pc", "pc-env" } });

        
        committees.Add(new committee { title = "", name = "Ilian Assenov", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Intan Hashimah Mohd", otherInfo = "USM, Malaysia", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Jirameth  Rungruang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Kichan Park ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Kwankamon Dittakan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Lemia Louail", otherInfo = "UFAS, Algeria", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Marie Laure Betbeder", otherInfo = "UBFC, France", types = new string[] { "pc" } });


        committees.Add(new committee {title = "", name = "Nuannut Khieowan", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });

        committees.Add(new committee { title = "", name = "Pornpisanu promsivapallop ", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee {  title = "", name = "Sakib Jalil", otherInfo = "UCD, USA", types = new string[] { "pc" } });

        committees.Add(new committee { title = "", name = "Shan Wei", otherInfo = "HEU, China", types = new string[] { "pc" } });

        committees.Add(new committee {  title = "", name = "Tatiyaporn Jarumaneerat", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Werapong Kertsin", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        committees.Add(new committee { title = "", name = "Ximing Yao", otherInfo = "SHU, China", types = new string[] { "pc" } });
        committees.Add(new committee {  title = "", name = "Yi Wang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pc" } });
        */
        /*organising*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Adisak  Intana", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Apichat Heednacram", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mr, name = "Arkom Wangmuang", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mrs, name = "Charoen Brahmritdhi", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mrs, name = "Esther Sangiamkul", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Jinda Sawattawee", otherInfo = "Prince of Songkla University, Thailand", types = new string[] { "pcorganising" } });

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
            <div class="container pc-card col-2 pc-counter-reset">
                <uc1:ucPCChair runat="server" ID="rptSteering" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h2>Program chair</h2>
            <div class="container">
                <p>For enquiries regarding paper submission, please contact Program Committee Chair:</p>

                <% 
                    var pc = GetCommittees().Where(x => x.types.Contains("pc")).OrderBy(x => x.titleEnum).ThenBy(x => x.name);

                    var envPC = pc.Where(x => x.types.Contains("pc-env"));

                    rptEnvPCChair.DataSource = envPC.Where(x => x.types.Contains("chair"));
                    rptEnvPCChair.DataBind();

                    rptEnvPC.DataSource = envPC.Except(rptEnvPCChair.DataSource as IEnumerable<committee>);
                    rptEnvPC.DataBind();
                %>
                <h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area1 %>" /></h3>
                <div class="container pc-counter-reset">
                    <div class="pc-card col-2">
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
                    <div class="pc-card col-2">
                        <uc1:ucPCChair runat="server" ID="rptComPCChair" />
                    </div>
                    <div class="pc-list">
                        <uc1:ucPCChair runat="server" ID="rptComPC" />
                    </div>
                </div>

                <%
                    var htPC = pc.Where(x => x.types.Contains("pc-ht"));

                    rptHTPCChair.DataSource = htPC.Where(x => x.types.Contains("chair")); ;
                    rptHTPCChair.DataBind();

                    rptHTPC.DataSource = htPC.Except(rptHTPCChair.DataSource as IEnumerable<committee>);
                    rptHTPC.DataBind();
                %>

                <h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area3 %>" /></h3>
                <div class="container pc-counter-reset">
                    <div class="pc-card">
                        <uc1:ucPCChair runat="server" ID="rptHTPCChair" />
                    </div>
                    <div class="pc-list">
                        <uc1:ucPCChair runat="server" ID="rptHTPC" />
                        <p class="tba">To Be Announced</p>
                    </div>
                </div>

                <%
                    var ibPC = pc.Where(x => x.types.Contains("pc-ib"));

                    rptIBPCChair.DataSource = ibPC.Where(x => x.types.Contains("chair")); ;
                    rptIBPCChair.DataBind();

                    rptIBPC.DataSource = ibPC.Except(rptIBPCChair.DataSource as IEnumerable<committee>);
                    rptIBPC.DataBind();
                %>

                <h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></h3>
                <div class="container pc-counter-reset">
                    <div class="pc-card">
                        <uc1:ucPCChair runat="server" ID="rptIBPCChair" />
                    </div>
                    <div class="pc-list">
                        <uc1:ucPCChair runat="server" ID="rptIBPC" />
                        <p class="tba">To Be Announced</p>
                    </div>
                </div>

                <%
                    var ilPC = pc.Where(x => x.types.Contains("pc-il"));

                    rptILPCChair.DataSource = ilPC.Where(x => x.types.Contains("chair")); ;
                    rptILPCChair.DataBind();

                    rptILPC.DataSource = ilPC.Except(rptILPCChair.DataSource as IEnumerable<committee>);
                    rptILPC.DataBind();
                %>

                <h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /></h3>
                <div class="container pc-counter-reset">
                    <div class="pc-card">
                        <uc1:ucPCChair runat="server" ID="rptILPCChair" />
                    </div>
                    <div class="pc-list">
                        <uc1:ucPCChair runat="server" ID="rptILPC" />
                        <p class="tba">To Be Announced</p>
                    </div>
                </div>
            </div>
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
