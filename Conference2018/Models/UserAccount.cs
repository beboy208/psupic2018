using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Conference2018.Models
{
    public class UserAccount
    {
        [Key]
        public string Email { get; set; }
        public List<int> PaperIDs { get; set; }
    }

    public class Author
    {
        public string ID { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public string Organization { get; set; }
        public string Country { get; set; }
        public string QRCodePath { get; set; }
    }
}