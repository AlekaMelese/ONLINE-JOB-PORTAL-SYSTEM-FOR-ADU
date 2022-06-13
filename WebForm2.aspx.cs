using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Online_Job_Portal_System
{
    public partial class WebForm2 : System.Web.UI.Page

    {
        string con = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldaterlist();

            }
        }

        private void filldaterlist()
        {
            try
            {
                SqlDataAdapter da = new SqlDataAdapter("SP_News", con);
                DataSet ds = new DataSet();
                //con.Open();
                da.Fill(ds);
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }
            finally
            {
               // con.close();

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //Panel1.Visible = true;
            
        }

        
    }
}