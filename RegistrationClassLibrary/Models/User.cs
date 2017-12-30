using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RegistrationClassLibrary.Models
{
    public class User
    {
        public string ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string email { get; set;}
        public string Organization { get; set; }
        public string Country { get; set; }
    }


    public class Author: User
    {

    }

    public class ProgramCommittee: User
    {
        public bool IsChair { get; set; }
    }
}
