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
    
    public partial class VIPType
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public VIPType()
        {
            this.VIPMembers = new HashSet<VIPMember>();
        }
    
        public string VIPTypeID { get; set; }
        public string VIPTypeNameTH { get; set; }
        public string VIPTypeNameEN { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<VIPMember> VIPMembers { get; set; }
    }
}