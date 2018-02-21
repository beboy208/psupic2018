using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;

namespace Conference2018
{
    public partial class authors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Session["authors"] = this.GetAuthors();
            }
        }

        private IEnumerable<Models.Author> GetAuthors()
        {
            var authorCode = Request.QueryString["code"];
            var db = new Conference2018.Datasources.PSUPICEntities1();

            //Get distinct author code.
            IQueryable<string> authorCode2018s = db.Authors
                         .Where(au => au.Submission.Area.ConferenceAcronym.ToLower() == "psupic2018")
                         .Select(au => au.Code).Distinct();

            //Specify author code
            IQueryable<string> selectedCodes = (string.IsNullOrWhiteSpace(authorCode)) ? 
                                                      authorCode2018s :
                                                      authorCode2018s.Where(c => c.ToLower() == authorCode.ToLower());
          
            
            //Get Author Info.
            List<Models.Author> result = null;
            if (selectedCodes != null && selectedCodes.Count() > 0)
            {
                result = new List<Models.Author>();
                foreach (var code in selectedCodes)
                {
                    result.Add(
                        db.Authors.Where(au => au.Code == code).Select(au => new Models.Author()
                        {
                            Country = au.Country,
                            Email = au.Email,
                            FullName = au.FullName,
                            ID = au.Code,
                            Organization = au.Organization,
                            QRCodePath = au.QRCodePath
                        }
                        ).FirstOrDefault());
                }
            }



            //IQueryable<Models.Author> author2018 = db.Authors
            //             .Where(au => au.Submission.Area.ConferenceAcronym.ToLower() == "psupic2018")
            //             .Select(au => new Models.Author()
            //             {
            //                 ID = au.Code,
            //                 Email = au.Email,
            //                 FullName = au.FullName,                             
            //             }).Distinct();

            //List<Models.Author> author2018 = new List<Models.Author>();

            //List<Models.Author> authors = null;

            //if (string.IsNullOrWhiteSpace(authorCode))
            //{
            //    authors = author2018.ToList();
            //}
            //else
            //{
            //    authors = author2018.Where(c => c.ID.ToLower() == authorCode.ToLower()).ToList();
            //}

            return result;
        }
    }
}