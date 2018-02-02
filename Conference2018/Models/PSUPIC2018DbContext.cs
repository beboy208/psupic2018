using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Conference2018.Models
{
    public class PSUPIC2018DbContext: DbContext
    {
        public DbSet<UserAccount> UserAccount { get; set; }
    }
}