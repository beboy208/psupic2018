﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018
{
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var ta = new Datasources.PSUPKTTimeAttendance();

            var schs = ta.GetSchedules();

        }
    }
}