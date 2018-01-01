using Conference2018.Models.Logics;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conference2018.Models
{
    public partial class Author : ISubmissionManageable<Submission>
    {
        public IEnumerable<Submission> GetSubmissions(string acronym)
        {
            List<Submission> submissions = new List<Submission>();

            submissions.Add(new Submission() { Acronym = acronym, PaperID = "1" });
            submissions.Add(new Submission() { Acronym = acronym, PaperID = "3" });


            return submissions;
        }
    }
}