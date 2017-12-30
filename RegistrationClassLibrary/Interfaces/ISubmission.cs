using RegistrationClassLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RegistrationClassLibrary.Interfaces
{
    public interface ISubmission
    {
        Submission GetSubmissions(string conferenceID);
    }
}
