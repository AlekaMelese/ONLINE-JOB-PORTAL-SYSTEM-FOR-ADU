using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_Job_Portal_System.Bussiness_Layer;

namespace Online_Job_Portal_System
{
    public partial class FeedBack : System.Web.UI.Page
    {
        JobSeekerRegistration feedback = new JobSeekerRegistration();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                feedback.UserName = txtActNo.Text.Trim();
                feedback.Email = txtEmail.Text.Trim();
                feedback.Feedback = txtMsg.Text.Trim();
                feedback.InsertFeedback(feedback);
               // Label1.Text = "Thanks For Your Feedback..!";
                Page.RegisterClientScriptBlock("Dhanush", "<script>alert('Thanks For Your Feedback...!')</script>");
               
                ClearData();
            }
            catch (Exception ex)
            {
                //Label1.Text = "Sorry Not work..!";

            }
        }

        private void ClearData()
        {
            txtActNo.Text = "";
            txtEmail.Text = "";
            txtMsg.Text = "";
        }
    }
}