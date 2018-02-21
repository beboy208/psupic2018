using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;

namespace Conference2018
{
    public partial class authors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var authorCode = Request.QueryString["code"];
                var db = new Conference2018.Datasources.PSUPICEntities1();
             
                //Get submissionIDs
                if (string.IsNullOrWhiteSpace(authorCode))
                {
                    var author = db.Authors.Where(c => c.Code.ToLower() == authorCode.ToLower()).FirstOrDefault();
                }
                else
                {
                   // submissionIDs = submissions2018.Select(s => s.Id).ToList();
                }

                

                //var authors = db.Authors.Where(a => a.QRCodePath.ToLower().Contains(authorCode.ToLower()));


                var submissions2018 = db.Submissions.Where(s => s.Area.ConferenceAcronym.ToLower() == "psupic2018");
                List<int> submissionIDs = null;

                

                //Find author by submissionID
                //var authors = db.Authors.Where(au => au.SubmissionID.HasValue && submissionIDs.Contains(au.SubmissionID.Value));

                var a = Conference2018.Services.REST.GetFromTA("api/{0}/events/{1}/attendees/{attendeeID}");
                //var author2018 = db.Authors.
                //    Select(a => new Conference2018.Models.Author()
                //    {
                //        Email = a.Email,
                //        FullName = a.FullName,
                //        ID = a.Id.ToString(),
                //        //PaperIDs = db.S
                //    });
                ////.Where(x => x.Submission.Area.ConferenceAcronym.ToLower() == "psupic2018");

                //List<Conference2018.Models.Author> authors = null;

              
            }
        }
    }
}