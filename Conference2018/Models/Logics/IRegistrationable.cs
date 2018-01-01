using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Conference2018.Models.Logics
{
    public interface IRegistrationable<T>
        where T: class
    {
        void SubmitRegistration(T RegistrationObject);

        void RemoveRegistration(string key);
        
        void UploadPaymentSlip(string key, object image);
    }
}
