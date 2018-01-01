using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conference2018.Models.Logics
{
    public class PSUPICAuthentication : IAuthentication<Author>
    {
        public Author Verify(string acronym, string authorEmail, string paperID)
        {
            Author author = null;

            author = new Author()
            {
                Email = authorEmail

            };


            return author;
        }
    }
}