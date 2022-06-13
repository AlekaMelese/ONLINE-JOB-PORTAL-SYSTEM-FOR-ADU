using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Job_Portal_System
{
    public partial class LoginType : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Response.Redirect("~/JobSeeker/Register/Job Seekers Registration.aspx");
            }
        }

       

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
           

        }

        protected void RadioButton2_CheckedChanged1(object sender, EventArgs e)
        {
           
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                Response.Redirect("~/Employer/Register/EmployerRegister.aspx");
            }
        }

        protected void RadioButton3_CheckedChanged1(object sender, EventArgs e)
        {
            if (RadioButton3.Checked)
            {
                Response.Redirect("~/Staff Manager/Register/Register Staff Manager.aspx");
            }
        }
    }
}