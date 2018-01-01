using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conference2018.Models.Logics
{
    public interface ISubmissionManageable<T>
        where T: class
    {
        IEnumerable<T> GetSubmissions(string acronym);
    }
}
