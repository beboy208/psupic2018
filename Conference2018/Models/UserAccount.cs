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
}