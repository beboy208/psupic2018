
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
       

        public IEnumerable<Submission> GetSubmissions(string acronym)
        {
            List<Submission> submissions = new List<Submission>();

            submissions.Add(new Submission() { Acronym = acronym, ID = "1" });
            submissions.Add(new Submission() { Acronym = acronym, ID = "3" });


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