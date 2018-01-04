using PSUPICLib.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PSUPICLib.Interfaces
{
    public interface IRegistrationable<T>
        where T: class
    {
        IEnumerable<T> GetRegistrations(string acronym);

        void SubmitRegistration(T RegistrationObject);

        void RemoveRegistration(string key);
        
        void UploadPaymentSlip(string key, object image);
    }
}
