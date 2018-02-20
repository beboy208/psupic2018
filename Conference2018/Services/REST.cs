using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;

namespace Conference2018.Services
{
    public static class REST
    {

        public static HttpResponseMessage GetFromTA(string servicePath)
        {
            string taServer = "http://192.168.192.209:8089";
            string taAppID = "p$up1c2018";
            var caller = "nontapon.r";
            var eventID = "cc11f90bc1e14291a228afa3762db417";

            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(taServer);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Add("ApplicationID", taAppID);

            return client.GetAsync(string.Format(servicePath, caller, eventID)).Result;
        }
    }
}