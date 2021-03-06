﻿using Conference2018.Models;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018
{
    public partial class attendance : System.Web.UI.Page
    {
        int schID = 1;
        protected Datasources.PSUPKTTimeAttendance _ta = new Datasources.PSUPKTTimeAttendance();
        protected Datasources.PSUWebAPI _psuAPI = new Datasources.PSUWebAPI();

        public void Page_Load()
        {
            successAlert.Visible = false;
            dangerAlert.Visible = false;

            if (Request.QueryString["schID"] != null)
            {
                int sid = schID;
                int.TryParse(Request.QueryString["schID"].ToString(), out sid);
                schID = sid;
            }

            _ta.SetWorkingScheduleID(schID);
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

                    if (checkIn.Item1 == Datasources.PSUPKTTimeAttendance.CheckInStatusEnum.failed)
                        throw new Exception(checkIn.Item2);
                    else
                    {
                        successAlert.Visible = true;
                        successAlert.InnerText = string.Format("Attendee {0} {1} {2}checked-in on {3}",
                            txtCode.Text,
                            txtName.Text,
                            checkIn.Item1 == Datasources.PSUPKTTimeAttendance.CheckInStatusEnum.already ? "already " : "",
                            checkIn.Item1 == Datasources.PSUPKTTimeAttendance.CheckInStatusEnum.already ? checkIn.Item2.Split(new[] { " on " }, StringSplitOptions.None)[1].ToString() : checkIn.Item3.ToString("MMMM dd, yyyy HH:mm"));
                    }
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

        protected void txtCode_TextChanged(object sender, EventArgs e)
        {
            string code = txtCode.Text.Trim();

            btnSubmit.Enabled = true;
            if (Regex.IsMatch(code, @"^\d+$")) //assume this code can be student
            {
                var std = _psuAPI.GetStudentByID(code);
                if (std != null)
                {
                    txtName.Text = string.Format("{0} {1} {2}",
                        std["Title"]["ShortTitleEN"].Value<string>(),
                        std["FirstNameEN"].Value<string>(),
                        std["LastNameEN"].Value<string>());
                    
                    if (std["StillStudent"].Value<bool>() &&
                        std["StudyLevel"]["NameTH"].Value<string>() == "ปริญญาตรี")
                        btnSubmit.Enabled = false;

                    txtEmail.Focus();
                }
            }
        }
    }
}