using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018
{
    public partial class vips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["vips"] = this.GetVIPs();
            }
        }

        private IQueryable<Datasources.VIPMember> GetVIPs()
        {
            var code = Request.QueryString["code"];
            var db = new Conference2018.Datasources.PSUPICEntities1();

            //Get distinct vip code.
            IQueryable<string> vipCode2018s = db.VIPMembers.Where(v => v.ConferenceAcronym.ToLower() == "psupic2018")
                         .Select(au => au.VIPCode).Distinct();

            //Specify vip code
            IQueryable<string> selectedCodes = (string.IsNullOrWhiteSpace(code)) ?
                                                      vipCode2018s :
                                                      vipCode2018s.Where(c => c.ToLower() == code.ToLower());


            //Get vip Info.
            IQueryable<Datasources.VIPMember> result = null;
            if (selectedCodes != null && selectedCodes.Count() > 0)
            {
                result = db.VIPMembers.Where(v => selectedCodes.Contains(v.VIPCode));
            }

            return result;
        }
    }
}