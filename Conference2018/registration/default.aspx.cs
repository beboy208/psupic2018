using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018.registration
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gvSubmission.Visible = false;
            if (Session["AuthorEmail"] != null)
                loadSubmission(Session["AuthorEmail"].ToString());

        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            var loginControl = (sender as Login);
            if (loginControl != null)
            {
                Session["AuthorEmail"] = loginControl.UserName;
            }
        }

        private void loadSubmission(string autherEmail)
        {
            IQueryable<Datasources.Submission> submissions = null;

            using (Datasources.PSUPICEntities1 db = new Datasources.PSUPICEntities1())
            {
                submissions = from s in db.Submissions
                              join u in db.Authors on s.Id equals u.SubmissionID
                              join a in db.Areas on s.AreaID equals a.ID
                              where a.ConferenceAcronym == "PSUPIC2018"
                              select s;

                gvSubmission.DataSource = submissions.ToList();
                gvSubmission.DataBind();
                gvSubmission.Visible = true;
            }
        }
    }
}