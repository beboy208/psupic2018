using PSUPICLib.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Interfaces
{
    public interface ISubmission
    {
        Submission GetSubmissions(string conferenceID);
    }
}
