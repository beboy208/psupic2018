//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PSUPICLib.Datasources
{
    using System;
    using System.Collections.Generic;
    
    public partial class RegistInvoice
    {
        public int InvoiceID { get; set; }
        public int RegistID { get; set; }
        public decimal Fee { get; set; }
        public string ReceiptNo { get; set; }
    
        public virtual Registration Registration { get; set; }
    }
}
