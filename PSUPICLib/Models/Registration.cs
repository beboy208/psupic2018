using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PSUPICLib.Models
{
    public class Registration
    {
        public int ID { get; set; }

        public string SubmissionID { get; set; }

        public string OtherFields { get; set; }

        public decimal Fee { get; set; }
    }
}