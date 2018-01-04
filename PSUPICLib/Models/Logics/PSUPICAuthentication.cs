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
            var submission = _db.Submissions.Include("Authors").Include("Area")
                .Where(s => s.Area.ConferenceAcronym == acronym &&
                            s.PaperCode == paperNumber).FirstOrDefault();
            if (submission != null)
            {
                var author = submission.Authors.Where(a => a.Email == authorEmail).FirstOrDefault();
                if (author != null)
                    return new Author()
                    {
                        ID = author.Id.ToString(),
                        Country = author.Country,
                        Email = author.Email,
                        FullName = author.FullName,
                        Organization = author.Organization
                    };
            }
            return null;
        }
    }
}