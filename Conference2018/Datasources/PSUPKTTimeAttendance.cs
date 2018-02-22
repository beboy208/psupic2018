using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;

namespace Conference2018.Datasources
{
    public class PSUPKTTimeAttendance
    {
        string server = "http://192.168.192.209:8089/";
        string applicationID = "p$up1c2018";
        string eventID = "cc11f90bc1e14291a228afa3762db417";
        int schID = 1;
        string caller = "nontapon.r";

        HttpClient client;

        public PSUPKTTimeAttendance()
        {
            client = new HttpClient();
            client.BaseAddress = new Uri(server);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            client.DefaultRequestHeaders.Add("ApplicationID", applicationID);
        }

        private JToken callService(string path)
        {
            string result = null;

            HttpResponseMessage response = client.GetAsync(path).Result;
            if (response.IsSuccessStatusCode)
            {
                result = response.Content.ReadAsStringAsync().Result;
            }

            return JToken.Parse(result);
        }


        public Models.Event GetEvent()
        {
            var response = callService(string.Format("api/{0}/events/{1}", caller, eventID));
            if (response == null)
                return null;

            return new Models.Event()
            {
                ID = response["EventID"].Value<string>(),
                Name = response["EventID"].Value<string>(),
                Date = response["EventDate"].Value<DateTime>(),
                Status = response["EventStatusID"].Value<int>(),
                AllowWalking = response["AllowWalkIn"].Value<bool>(),
                AllowSelfRegistration = response["AllowSeftRegistration"].Value<bool>()
            };
        }

        public IEnumerable<Models.EventSchedule> GetSchedules()
        {
            var response = callService(string.Format("api/{0}/events/{1}/schedules", caller, eventID));
            if (response == null || response.Count() <= 0)
                return null;

            List<Models.EventSchedule> result = new List<Models.EventSchedule>();
            foreach (var sch in response)
            {
                result.Add(new Models.EventSchedule() {
                    ID = sch["ScheduleID"].Value<int>(),
                    Title = sch["ScheduleTitle"].Value<string>(),
                    From = sch["ScheduleFrom"].Value<DateTime>(),
                    To = sch["ScheduleTo"].Value<DateTime>(),
                    AllowSelftTimeStamp = sch["AllowSelfTimeStamp"].Value<bool>(),
                });
            }

            return null;
        }




        
        //void InsertAttendance(Attendance )
    }
}