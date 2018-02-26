using Conference2018.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using System.Web;

namespace Conference2018.Datasources
{
    /// <summary>
    /// เชื่อมต่อกับแหล่งข้อมูล / Service ของ Time Attendance
    /// </summary>
    public class PSUPKTTimeAttendance
    {
        string _server = "http://192.168.192.209:8089/"; //ที่ตั้งของ Service
        string _applicationID = "p$up1c"; //รหัส Application ของ Partner: PSUPIC
        string _eventID = "cc11f90bc1e14291a228afa3762db417";
        int _schID = 1; //หมายเลข Schedule ในฐานของ Event นี้
        string _caller = "nontapon.r"; //ตัวแทนเรียก ทำหน้าที่เป็น MemberPartner

        HttpClient _client = new HttpClient();

        public PSUPKTTimeAttendance()
        {
            _client.BaseAddress = new Uri(_server);
            _client.DefaultRequestHeaders.Accept.Clear();
            _client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
            _client.DefaultRequestHeaders.Add("ApplicationID", _applicationID);
        }

        private JToken callService(string path)
        {
            string result = null;

            HttpResponseMessage response = _client.GetAsync(path).Result;
            if (response.IsSuccessStatusCode)
            {
                result = response.Content.ReadAsStringAsync().Result;
            }

            return JToken.Parse(result);
        }

        public Models.Event GetEvent()
        {
            var response = callService(string.Format("api/{0}/events/{1}", _caller, _eventID));
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


        public Models.EventSchedule GetFirstSchedule()
        {
            return GetSchedules().First();
        }

        public IEnumerable<Models.EventSchedule> GetSchedules()
        {
            var response = callService(string.Format("api/{0}/events/{1}/schedules", _caller, _eventID));
            if (response == null || response.Count() <= 0)
                return null;

            List<Models.EventSchedule> result = new List<Models.EventSchedule>();
            foreach (var sch in response)
            {
                result.Add(new Models.EventSchedule()
                {
                    ID = sch["ScheduleID"].Value<int>(),
                    Title = sch["ScheduleTitle"].Value<string>(),
                    From = sch["ScheduleFrom"].Value<DateTime>(),
                    To = sch["ScheduleTo"].Value<DateTime>(),
                    AllowSelftTimeStamp = sch["AllowSelfTimeStamp"].Value<bool>(),
                });
            }

            return result;
        }


        /// <summary>
        /// Get Attendee by Code (no exception)
        /// </summary>
        /// <param name="attendeeCode"></param>
        /// <returns></returns>
        public Attendee GetAttendee(string attendeeCode)
        {
            Attendee result = null;
            try
            {
                var response = callService(string.Format("api/{0}/events/{1}/attendees?code={2}", _caller, _eventID, attendeeCode));
                if (response == null)
                    return null;

                result = response.Select(x => new Attendee()
                {
                    ID = x["ID"].Value<string>(),
                    Address = x["Address"].Value<string>(),
                    Code = x["Code"].Value<string>(),
                    Email = x["Email"].Value<string>(),
                    FullName = x["FullName"].Value<string>(),
                    IsWalkInAttendee = x["IsWalkInAttendee"].Value<bool>(),
                    PhoneNumber = x["PhoneNumber"].Value<string>()
                }).FirstOrDefault();
            }
            catch (Exception) { }

            return result;
        }

        /// <summary>
        /// Insert attendee (no excpetion)
        /// </summary>
        /// <param name="attendee"></param>
        /// <returns></returns>
        public bool PostAttendee(Attendee attendee)
        {
            bool result;
            try
            {
                string requestUri = string.Format("api/{0}/events/{1}/attendees", _caller, _eventID);
                var response = _client.PostAsJsonAsync(requestUri, attendee).Result;
                response.EnsureSuccessStatusCode();
                result = true;
            }
            catch (Exception)
            {
                result = false;
            }

            return result;
        }

        public Tuple<bool, DateTime> checkInAttendance(string attendeeID)
        {
            return new Tuple<bool, DateTime>(true, DateTime.Now);
        }

        public Tuple<bool, DateTime> checkOutAttendance(string attendeeID)
        {
            return new Tuple<bool, DateTime>(true, DateTime.Now);
        }

        //void InsertAttendance(Attendance )
    }
}