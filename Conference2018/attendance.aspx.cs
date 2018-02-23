using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018
{
    public partial class attendance : System.Web.UI.Page
    {
        Datasources.PSUPKTTimeAttendance _ta = new Datasources.PSUPKTTimeAttendance();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                _ta.PostAttendee(new Models.Attendee()
                {
                    Code = txtCode.Text,
                    Email = txtEmail.Text,
                    FullName = txtName.Text,
                    PhoneNumber = string.IsNullOrWhiteSpace(txtPhone.Text) ? null : txtPhone.Text,
                    Address = string.IsNullOrWhiteSpace(txtAddress.Text) ? null : txtAddress.Text,
                    IsWalkInAttendee = true,
                });
            }
            catch (Exception)
            {
                //Do notting, prevent insert failed, ex: duplicated code
            }


            var result = _ta.GetAttendee(txtCode.Text);
            if (result == null)
            {
                //Insert Failed
            } else
            {
                //Insert Success, then check in
                _ta.checkInAttendance(result.ID);
            }




            //_ta.PostAttendee(new Models.Attendee()
            //{
            //    Code = "nontapon.r",
            //    Email = "x@x.com",
            //    IsWalkInAttendee = true,
            //    FullName = "Name",
            //    PhoneNumber = "9999999"
            //});
        }
    }
}