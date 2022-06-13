using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Job_Portal_System
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

       

        protected void lnkAccountUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginType.aspx");
        }

        protected void ds_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");

        }
    }
}
