
using PSUPICLib.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSUPICLib.Models
{
    public partial class Author :
        IRegistrationable<Registration>,
        ISubmissionManageable<Submission>
    {
        Datasources.PSUPICEntities _db = new Datasources.PSUPICEntities();

        public IEnumerable<Registration> GetRegistrations(string acronym)
        {
            var submissionIDs = this.GetSubmissions(acronym).Select(s => s.ID);
            var regs = _db.Registrations.Where(x => submissionIDs.Contains(x.SubmissionID.ToString()));
            return regs.Select(r => new Registration()
            {
                ID = r.RegistID,
                SubmissionID = r.SubmissionID.ToString(),
                Fee = (r.Fee.HasValue) ? r.Fee.Value : 0
            });
        }

        public IEnumerable<Submission> GetSubmissions(string acronym)
        {
            List<Submission> submissions = new List<Submission>();

            submissions.Add(new Submission() { Acronym = acronym, ID = "44" });
            submissions.Add(new Submission() { Acronym = acronym, ID = "45" });


            return submissions;
        }

        public void RemoveRegistration(string key)
        {
            
        }

        public void SubmitRegistration(Registration RegistrationObject)
        {
            
        }

        public void UploadPaymentSlip(string key, object image)
        {
            //https://www.aspsnippets.com/Articles/Upload-images-to-folder-and-display-uploaded-images-in-ASPNet-GridView-using-C-and-VBNet.aspx
        }
    }
}