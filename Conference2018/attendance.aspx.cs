using Conference2018.Models;
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
            //InsertAttendee(new Models.Attendee()
            //{
            //    Code = "nontapon.r",
            //    Email = "x@x.com",
            //    FullName = "Nontapon Rattanapittayporn",
            //    IsWalkInAttendee = true,
            //    PhoneNumber = "9999999"
            //});

            _ta.PostAttendee(new Models.Attendee()
            {
                Code = txtCode.Text,
                Email = txtEmail.Text,
                FullName = txtName.Text,
                PhoneNumber = string.IsNullOrWhiteSpace(txtPhone.Text) ? null : txtPhone.Text,
                Address = string.IsNullOrWhiteSpace(txtAddress.Text) ? null : txtAddress.Text,
                IsWalkInAttendee = true,
            });

            //Attendee should be found after inserted or existed 
            var attendee = _ta.GetAttendee(txtCode.Text);
            if (attendee == null)
            {
                //attendee not found in this situration mean Insert Failed
                dangerAlert.Visible = true;
                dangerAlert.InnerText = string.Format("Registration failed for Attendee {0}", txtCode.Text) + Environment.NewLine;
            }
            else
            {
                var checkIn = _ta.checkInAttendance(attendee.ID);
                successAlert.Visible = true;
                successAlert.InnerText = string.Format("{0} {1}checked-in on {1}",
                    txtName.Text,
                    checkIn.Item1 ? "" : "already ",
                    checkIn.Item2.ToString("MM dd, yyyy hh:mm"));
            }
        }
    }
}