using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Conference2018.UserControls
{
    public partial class ucPCChair : System.Web.UI.UserControl
    {

        public object DataSource
        {
            get { return repeater.DataSource; }
            set { repeater.DataSource = value; }
        }

        public override void DataBind()
        {
            repeater.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}