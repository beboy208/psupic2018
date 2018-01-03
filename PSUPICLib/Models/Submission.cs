using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Models
{
    public class Submission {//: PSUPICLib.Datasources.Submission {
        public string ID { get; set; }
        public string Acronym { get; set; }
        public string PaperCode { get; set; }
        public string Title { get; set; }
        public List<string> Keywords { get; set;}
        public List<string> TopicIDs { get; set; }
        public string Abstract { get; set; }
    }
}
