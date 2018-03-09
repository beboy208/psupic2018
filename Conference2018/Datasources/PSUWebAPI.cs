using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace Conference2018.Datasources
{
    public class PSUWebAPI
    {
        HttpClient _client = new HttpClient();
        readonly string uname = "psupic";
        readonly string passwd = "p$up1c";
        readonly string server = "https://api-phuket.psu.ac.th/";

        JToken _accessTokenTmp = null; //Use in function RequestToken only

        public PSUWebAPI()
        {
            _client.BaseAddress = new Uri(server);
            _client.DefaultRequestHeaders.Accept.Clear();
            _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
        }

        public string RequestToken()
        {
            if (_accessTokenTmp != null && _accessTokenTmp["ExpiresGMT"].Value<DateTime>() > DateTime.UtcNow)
            {
                return _accessTokenTmp["AccessToken"].Value<string>();
            }

            if (_accessTokenTmp == null)
            {
                string accessToken = string.Empty;
                _client.DefaultRequestHeaders.Remove("username");
                _client.DefaultRequestHeaders.Add("username", uname);
                _client.DefaultRequestHeaders.Remove("password");
                _client.DefaultRequestHeaders.Add("password", passwd);
                HttpResponseMessage response = _client.GetAsync("common/token/request").Result;

                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    _accessTokenTmp = JToken.Parse(result);
                }
            }

            if (_accessTokenTmp != null && _accessTokenTmp["ExpiresGMT"].Value<DateTime>() > DateTime.UtcNow)
            {
                return _accessTokenTmp["AccessToken"].Value<string>();
            }
            return string.Empty;
        }

        private string TryRequestToken(int time)
        {
            string token = string.Empty;
            do
            {
                token = RequestToken();
                time--;
            }
            while (string.IsNullOrWhiteSpace(token) && time > 0);
            return token;
        }

        public JToken GetStudentByID(string studentID)
        {
            var token = TryRequestToken(3);
            if (!string.IsNullOrWhiteSpace(token)) {
                _client.DefaultRequestHeaders.Remove("accessToken");
                _client.DefaultRequestHeaders.Add("accessToken", token);
                HttpResponseMessage response = _client.GetAsync(string.Format("sis/students/{0}", studentID)).Result;
                if (response.IsSuccessStatusCode)
                {
                    var result = response.Content.ReadAsStringAsync().Result;
                    return JToken.Parse(result);
                }
            }
            return null;
        }
    }
}