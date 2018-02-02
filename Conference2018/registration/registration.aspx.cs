using Conference2018.Datasources;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018.registration
{
    public partial class registration : System.Web.UI.Page
    {
        public string PSUPICAcronym = "psupic2018";
        public Author PSUPICAuthor
        {
            get
            {
                return Session[Enum.Session.AuthorObj.ToString()] as Author;
            }
            private set
            {
                Session[Enum.Session.AuthorObj.ToString()] = value;
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            //var email = txtAuthorEmail.Text;
            //var paperID = txtPaperID.Text;

            //IAuthentication<Author> security = new PSUPICAuthentication();

            //var author = security.Verify(PSUPICAcronym, email, paperID);

            //if (author == null)
            //    txtLoginError.Visible = true;

            //PSUPICAuthor = author;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            PSUPICAuthor = null;
        }

        protected void btnRegist_Click(object sender, EventArgs e)
        {
            //IRegistrationable<Registration> user = PSUPICAuthor as IRegistrationable<Registration>;
            //user.SubmitRegistration(new Registration());
        }

        //protected IEnumerable<Registration> GetAuthorRegistrations()
        //{
        //    //IRegistrationable<Registration> user = PSUPICAuthor as IRegistrationable<Registration>;
        //    //return user.GetRegistrations(PSUPICAcronym);
        //}
    }
}