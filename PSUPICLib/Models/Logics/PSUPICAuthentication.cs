using PSUPICLib.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PSUPICLib.Models
{
    public partial class PSUPICAuthentication : IAuthentication<Author>
    {
        Datasources.PSUPICEntities _db = new Datasources.PSUPICEntities();

        public Author Verify(string acronym, string authorEmail, string paperNumber)
        {
            var submission = _db.Submissions.Where(s => s.PaperCode == paperNumber).FirstOrDefault();
            if (submission != null)
            {
                var auth = _db.Authors.Where(a => a.Email == authorEmail && a.SubmissionID == submission.Id).FirstOrDefault();

            }

            Author author = null;

            author = new Author()
            {
                Email = authorEmail

            };


            return author;
        }
    }
}