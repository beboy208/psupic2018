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
        AssocProfDr=2,

        [Display(Name = "Assoc. Prof. ")]
        AssocProf=2,

        //ผู้ช่วยศาสตาจารย์
        [Display(Name = "Asst. Prof. Dr.")]
        AsstProfDr,

        [Display(Name = "Asst. Dr.")]
        AsstDr,

        [Display(Name = "Asst.")]
        Asst,

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
        public string executive { get; set; }
        public string email { get; set; }
        public string phone { get; set; }
        public string organization { get; set; }
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
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Worawut  Wisutmethangoon", executive="Vice President for Phuket Campus", organization = "Prince of Songkla University, Thailand", types = new string[] { "general", "steering" } });

        /*steering*/
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Nuwan Thapthiang", executive="Dean, Faculty of International Studies", organization = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProf, name = "Prathana Kunnaovakun", executive="Dean, Faculty of Hospitality and Tourism", organization = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Pun Thongchumnum ", executive="Dean, Faculty of Technology and Environment",  organization = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Rattana  Wetprasit", executive="Vice President for Academic Affairs and Graduate", organization = "Prince of Songkla University, Thailand", types = new string[] { "steering", "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Sinchai Kamolphiwong", executive="Dean, College of Computing",  organization = "Prince of Songkla University, Thailand", types = new string[] { "steering" } });

        /*pc-env-chair*/
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Pensiri Akkajit", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6488", email="pensiri.a(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Siriwan Ruamkaew", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6495", email="siriwan.ru(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-env", "chair" } });

        /*pc-env, te*/
        /*committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Shabbir H. Gheewala ", organization = "King Mongkut's University of Technology Thonburi, Thailand", types = new string[] { "pc", "pc-env" } }); */
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Alfredo Huete", organization = "University of Technology, Sydney City Campus, Australia", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Raymond J. Ritchie", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Kiyota Hashimoto", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
       /* committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Tom DeSutter", organization = "Soil Science Department, North Dakota State University", types = new string[] { "pc", "pc-env" } }); */
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Mohd Sham Othman", organization = "Diagnostic & Applied Health Sciences, Universiti Kebangsaan Malaysia", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chantinee Boonyachai", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Werapong Keodsin", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Thanita Arreerob", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Aree Choodum", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Danai Thipmanee", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Avirut Puttivongrak", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Vipawee Dummee", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Tanwa Arpornthip", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kritana Phutsakorn", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Supatsara Kunsri", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wilasinee Sriprom", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wadcharawadee Limsakul", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Sangdao Wongsai", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Siriwan Ruamkeaw", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Rawee Rattanakom", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Sakshin Bunthawin", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Worawit Wongniramaikul", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Naiyana Srichai", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-env" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Pham Thi Bich Thao", organization = "King Mongkut's University of Technology Thonburi (KMUTT)", types = new string[] { "pc", "pc-env" } });

        /*pc-com-chair*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Noppon Lertchuwongsa", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6561", email="noppon.l(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-com", "chair" } });

        /*pc-com, COC*/
        committees.Add(new committee { titleEnum = ctitle.AsstDr, name = "Aziz Nanthaamornphong", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Jirawat Thaenthong", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Voravika Wattanasoontorn", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kwankamon Dittakan", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Winai Nadee", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kanjana Thongglin", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nattapong Tongtep", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Korawit Prutsachainimmit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kitsiri Chochiang", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nawanol Theera-Ampornpunt", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AsstDr, name = "Warodom Weeraphun", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AsstDr, name = "Apichart Heednacram", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chakadkit Thaenchaikul", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kittasin Silanon", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Komsan Kanjanasit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Wasimon Panichpattanakul", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Thitinan Kliangsuwan", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Kullawat Chaowanawatee", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Amarin Deemakarn", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Thammarat Samitalampa", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Phatcharee Thepnimit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Sakib Jalil", organization = "University of California Davis, CA, USA", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Lemia Louail", organization = "Computer Science Department, Faculty of Sciences, University of Sétif 1, Algeria.", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProf, name = "Marie Laure Betbeder", organization = "Universite de Bourgogne France-comte, France", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Alban Rousset", organization = "University of Luxembourg", types = new string[] { "pc", "pc-com" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Michael Poppleton", organization = "University of Southampton, UK", types = new string[] { "pc", "pc-com" } });


        /*pc-ht-chair*/


        /*pc-ht, FHT*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chayanon Phucharoen", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6838", email="dr.chayanonphucharoen(at)gmail.com", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Prathana Kannaovakun", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = " Pornpisanu Promsivapallop", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Tatiyaporn Jarumaneerat", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Nareeya  Weerakit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Areeta Tirasattayapitak", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Kullada Phetvaroon", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Panuwat Phakdee-auksorn", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Ilian Assenov", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Chatchavan Wongwattanakit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Prateep Wetprasit", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Aphirom Promjanya", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ht" } });


        /*pc-ib-chair*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Jirameth Rungruang", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6612", email="jirameth.r(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-ib", "chair" } });

        /*pc-ib and pc-il, FIS*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Supachai Jeangjai", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6293", email="supachai.je(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-ib" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Ximing Yao", organization = "Shanghai University, P.R.China", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.ProfDr, name = "Shan Wei", organization = "Harbin Engineering University", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Intan Hashimah Mohd. Hashim", organization = "University of Science, Malaysia", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Liu Chang", organization = "", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Han Yueqiu", organization = "", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.none, name = "Wang Dongying", organization = "", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Prof, name = "Park Ki Chan", organization = "College of Business Administration, Inha University, Korea", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Lavanchawee Sujarittanonta", organization = "I-Shou University International College, Taiwan", types = new string[] { "pc", "pc-ib", "pc-il" } });
        //committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Intan Hashimah Mohd. Hashim", otherInfo = "University of Sains Malaysia, Malaysia", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Sara Nuzhat Amin", organization = "Asian University for Women, Bangladesh", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Kim Young Aih", organization = "Hankuk University of Foreign Studies, Korea", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Pim de Jong", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Kesinee Chaisri", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Asst, name = "Sopon Supaviriyakorn", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Saranya Pathanasin", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nattakan Dilts", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Teerathorn Lamnaokrut", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Steven Andrew Martin", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Sudrudee Bumrung", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Yupin Karanyadech", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Nuannut Khieowan", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-ib", "pc-il" } });


        /*pc-il-chair*/
        committees.Add(new committee { titleEnum = ctitle.AssocProfDr, name = "Sombat Khruathong", organization = "Prince of Songkla University, Thailand", phone="(+66)-7627-6603", email="sombat.k(at)phuket.psu.ac.th", types = new string[] { "pc", "pc-il", "chair" } });

        /*pc-il*/
        /*ใช้รายการเดียวกับ ib*/

        /*organising*/
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Adisak Intana", organization = "Prince of Songkla University, Thailand", types = new string[] { "pc", "pc-com", "organising" } });
        committees.Add(new committee { titleEnum = ctitle.AsstProfDr, name = "Apichat Heednacram", organization = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mr, name = "Arkom Wangmuang", organization = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mr, name = "Charoen Brahmritdhi", organization = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Mrs, name = "Esther Sangiamkul", organization = "Prince of Songkla University, Thailand", types = new string[] { "organising" } });
        committees.Add(new committee { titleEnum = ctitle.Dr, name = "Jinda Sawattawee", organization = "Prince of Songkla University, Thailand", types = new string[] { "pcorganising" } });

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
    <hr />

    <div class="row">
        <div class="col-md-12">
            <h2>Steering Committee</h2>
            <% 
                var sterrings = GetCommittees().Where(x => x.types.Contains("steering"));
                var customOrderSteerings = new List<committee>();
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("worawut")));
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("rattana")));
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("prathana")));
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("pun")));
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("nuwan")));
                customOrderSteerings.Add(sterrings.First(x => x.name.ToLower().Contains("sinchai")));
                rptSteering.DataSource = customOrderSteerings;
                rptSteering.DataBind();
            %>
            <div class="container pc-card col-2 pc-counter-reset">
                <uc1:ucPCChair runat="server" ID="rptSteering" />
            </div>
        </div>
    </div>
    <hr />

    <div class="row">
        <div class="col-md-12">
            <h2>Program Committee</h2>
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
                <hr />

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
                <hr />

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
                        <%--<p class="tba">To Be Announced</p>--%>
                    </div>
                </div>
                <hr />

                <%
                    var ibPC = pc.Where(x => x.types.Contains("pc-ib"));

                    rptIBPCChair.DataSource = ibPC.Where(x => x.types.Contains("chair")); ;
                    rptIBPCChair.DataBind();

                    rptIBPC.DataSource = ibPC.Except(rptIBPCChair.DataSource as IEnumerable<committee>);
                    rptIBPC.DataBind();


                    rptILPCChair.DataSource = pc.Where(x => x.types.Contains("pc-il") && x.types.Contains("chair"));
                    rptILPCChair.DataBind();
                %>
                <h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" />
                    and
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" />
                </h3>
                <div class="row pc-counter-reset">
                    <div class="col-md-6">
                        <h4>
                            <asp:Literal runat="server" Text="<%$ Resources:Resource, Area4 %>" /></h4>
                        <div class="pc-card">
                            <uc1:ucPCChair runat="server" ID="rptIBPCChair" />
                        </div>
                    </div>
                    <div class="col-md-6">
                        <h4>
                            <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /></h4>
                        <div class="pc-card">
                            <uc1:ucPCChair runat="server" ID="rptILPCChair" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="pc-list">
                            <uc1:ucPCChair runat="server" ID="rptIBPC" />
                        </div>
                    </div>
                </div>

                <%
//var ilPC = pc.Where(x => x.types.Contains("pc-il"));

//rptILPCChair.DataSource = ilPC.Where(x => x.types.Contains("chair")); ;
//rptILPCChair.DataBind();

//rptILPC.DataSource = ilPC.Except(rptILPCChair.DataSource as IEnumerable<committee>);
//rptILPC.DataBind();
                %>

                <%--<h3>
                    <asp:Literal runat="server" Text="<%$ Resources:Resource, Area5 %>" /></h3>
                <div class="container pc-counter-reset">

                    <div class="pc-list">
                        <uc1:ucPCChair runat="server" ID="rptILPC" />
                        <p class="tba">To Be Announced</p>
                    </div>
                </div>--%>
            </div>
        </div>
    </div>
    <hr />

    <div class="row">
        <div class="col-md-12">
            <h3>Organising Committee Chairs</h3>

            <% 
                rptOrganising.DataSource = GetCommittees().Where(x => x.types.Contains("organising")).OrderBy(x => x.titleEnum).ThenBy(x => x.name);
                rptOrganising.DataBind();
            %>
            <div class="container pc-list pc-counter-reset">
                <uc1:ucPCChair runat="server" ID="rptOrganising" />
            </div>
        </div>
    </div>
</asp:Content>
