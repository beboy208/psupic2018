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
    
    public partial class Author
    {
        public int Id { get; set; }
        public Nullable<int> SubmissionID { get; set; }
        public string FullName { get; set; }
        public string Email { get; set; }
        public Nullable<int> AuthorOrder { get; set; }
        public string Organization { get; set; }
        public string Country { get; set; }
        public string QRCodePath { get; set; }
        public string Code { get; set; }
    
        public virtual Submission Submission { get; set; }
    }
}
