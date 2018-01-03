using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Interfaces
{
    public interface IAuthentication<T>
    {
        T Verify(string acronym, string authorEmail, string paperID);
    }
}
