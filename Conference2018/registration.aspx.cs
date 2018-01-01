using Conference2018.Models;
using Conference2018.Models.Logics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018
{
    public partial class registration : System.Web.UI.Page
    {
        public string PSUPICAcronym = "psupic2018";
        public Author PSUPICAuthor
        {
            get
            {
                return Session[Enum.Session.Author.ToString()] as Author;
            }
            private set
            {
                Session[Enum.Session.Author.ToString()] = value;
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            var email = txtAuthorEmail.Text;
            var paperID = txtPaperID.Text;

            PSUPICAuthor = (new PSUPICAuthentication()).Verify(PSUPICAcronym, email, paperID);
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            PSUPICAuthor = null;
        }

        protected void btnRegist_Click(object sender, EventArgs e)
        {
            IRegistrationable<Registration> user = PSUPICAuthor as IRegistrationable<Registration>;
            user.SubmitRegistration(new Registration());
        }
    }
}