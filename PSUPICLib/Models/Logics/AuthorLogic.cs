
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
            //เนื่องจากข้อมูล Registration ขึ้นอยู่กับ Submission จึงต้องดูข้อมูลนี่มาก่อน
            //เจ้าตัวมี Submission อะไรบ้าง
            var submissionIDs = this.GetSubmissions(acronym).Select(s => s.ID);

            //แล้วจึงกรองเอาเฉพาะ Registration ที่เกี่ยวข้อง
            var regs = _db.Registrations.Where(x => submissionIDs.Contains(x.SubmissionID.ToString()));

            return regs.Select(r => new Registration()
            {
                ID = r.RegistID,
                SubmissionID = r.SubmissionID.ToString(),
                Fee = (r.Fee.HasValue) ? r.Fee.Value : 0
            });
        }


        /// <summary>
        /// Get self Submissions in a Conference by acronym
        /// </summary>
        /// <param name="acronym"></param>
        /// <returns></returns>
        public IEnumerable<Submission> GetSubmissions(string acronym)
        {
            //ข้อมูล Acronym ผูกกับ Area จึงต้อง Include Area เข้ามาด้วย
            IEnumerable<Submission> submissions = _db.Submissions.Include("Area")
                                                     .Where(s => s.Area.ConferenceAcronym == acronym)
                                                     .Select(s => new Models.Submission
                                                     {
                                                         Abstract = s.Abstract,
                                                         ID = s.Id.ToString(),
                                                         Acronym = acronym,
                                                         //Keywords = null, //ถ้า Set null จะเกิด Error
                                                         PaperCode = s.PaperCode,
                                                         Title = s.Title,
                                                         TopicIDs = new List<string>() { s.AreaID.ToString() }
                                                     });
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