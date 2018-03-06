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

            _ta.AddAttendee(new Models.Attendee()
            {
                Code = txtCode.Text,
                CitizenID = txtCode.Text,
                Email = txtEmail.Text,
                FullName = txtName.Text,
                PhoneNumber = string.IsNullOrWhiteSpace(txtPhone.Text) ? null : txtPhone.Text,
                Address = string.IsNullOrWhiteSpace(txtAddress.Text) ? null : txtAddress.Text,
                IsWalkInAttendee = true,
            });

            //Attendee should be found after inserted
            var attendee = _ta.GetAttendee(txtCode.Text);
            if (attendee == null)
            {
                //attendee not found in this situation mean Insert Failed
                dangerAlert.Visible = true;
                dangerAlert.InnerText = string.Format("Registration failed for Attendee {0} {1}", txtCode.Text, txtName.Text) + Environment.NewLine;
            }
            else
            {
                try
                {
                    //checkInAttendance(model) will update Attendee.
                    attendee.FullName = txtName.Text;
                    attendee.Email = txtEmail.Text;
                    attendee.FullName = txtName.Text;
                    attendee.PhoneNumber = string.IsNullOrWhiteSpace(txtPhone.Text) ? null : txtPhone.Text;
                    attendee.Address = string.IsNullOrWhiteSpace(txtAddress.Text) ? null : txtAddress.Text;

                    var checkIn = _ta.checkInAttendance(attendee);
                    successAlert.Visible = true;
                    successAlert.InnerText = string.Format("{0} {1} checked-in on {2}",
                        txtName.Text,
                        checkIn.Item1 ? "" : "already ",
                        checkIn.Item2.ToString("MM dd, yyyy HH:mm"));
                }
                catch (Exception ex)
                {
                    dangerAlert.Visible = true;
                    dangerAlert.InnerText = ex.Message;
                }

                clearForm();
            }
        }

        private void clearForm()
        {
            txtAddress.Text = "";
            txtCode.Text = "";
            txtEmail.Text = "";
            txtName.Text = "";
            txtPhone.Text = "";
            txtCode.Focus();
        }
    }
}