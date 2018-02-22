using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Conference2018.Models
{
    public class Event
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public int Status { get; set; }
        public DateTime Date { get; set; }
        public bool AllowWalking { get; set; }
        public bool AllowSelfRegistration { get; set; }
    }

    public class EventSchedule
    {
        public int ID { get; set; }
        public string Title { get; set; }
        public DateTime From { get; set; }
        public DateTime To { get; set; }
        public bool AllowSelftTimeStamp { get; set; }
    }

    public class Attendee
    {
        public string Code { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Tel { get; set; }
        public bool IsWalkIn { get; set; }
    }
}