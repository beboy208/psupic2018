using Conference2018.Models.Logics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conference2018.Models
{
    public partial class Author :
        IRegistrationable<RegistData>,
        ISubmissionManageable<Submission>
    {
       

        public IEnumerable<Submission> GetSubmissions(string acronym)
        {
            List<Submission> submissions = new List<Submission>();

            submissions.Add(new Submission() { Acronym = acronym, PaperID = "1" });
            submissions.Add(new Submission() { Acronym = acronym, PaperID = "3" });


            return submissions;
        }

        public void RemoveRegistration(string key)
        {
            
        }

        public void SubmitRegistration(RegistData RegistrationObject)
        {
            
        }

        public void UploadPaymentSlip(string key, object image)
        {
            //https://www.aspsnippets.com/Articles/Upload-images-to-folder-and-display-uploaded-images-in-ASPNet-GridView-using-C-and-VBNet.aspx
        }
    }
}