//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Conference2018.Datasources
{
    using System;
    using System.Collections.Generic;
    
    public partial class VIPMember
    {
        public string VIPCode { get; set; }
        public string ConferenceAcronym { get; set; }
        public string VIPFullName { get; set; }
        public string VIPTypeID { get; set; }
        public string VIPDescription { get; set; }
        public string VIPMission { get; set; }
        public int VIPOrder { get; set; }
        public string VIPQRCodePath { get; set; }
    
        public virtual Conference Conference { get; set; }
        public virtual VIPType VIPType { get; set; }
    }
}
