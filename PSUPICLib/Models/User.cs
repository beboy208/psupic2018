using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Models
{
    public partial class User
    {
        public string ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Organization { get; set; }
        public string Country { get; set; }
    }


    public partial class Author : User
    {
        //Hide Parent
        [Obsolete()]
        public new string FirstName
        {
            get
            {
                return FullName;
            }
            set
            {
                throw new NotImplementedException();
            }
        }
        //Hide Parent
        [Obsolete()]
        public new string LastName
        {
            get
            {
                return FullName;
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public string FullName { get; set; }
    }

    public partial class ProgramCommittee : User
    {
        //Hide Parent
        [Obsolete()]
        public new string FirstName
        {
            get
            {
                return FullName;
            }
            set
            {
                throw new NotImplementedException();
            }
        }
        //Hide Parent
        [Obsolete()]
        public new string LastName
        {
            get
            {
                return FullName;
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public string FullName { get; set; }
        public bool IsChair { get; set; }
    }
}
