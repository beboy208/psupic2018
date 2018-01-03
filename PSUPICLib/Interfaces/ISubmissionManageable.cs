using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Interfaces
{
    public interface ISubmissionManageable<T>
        where T: class
    {
        IEnumerable<T> GetSubmissions(string acronym);
    }
}
