using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Configuration;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Data.SqlClient;
using System.Data;
using Online_Job_Portal_System.Bussiness_Layer;

namespace Online_Job_Portal_System
{
    public partial class Login : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString;

        string str, UserName, Password;

        SqlCommand com;

        SqlDataAdapter sqlda;
        DataTable dt;
        int RowCount;
        protected void Page_Load(object sender, EventArgs e)
        {
           
             
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strConnString);

            con.Open();

            str = "Select * from tbl_CreateAccount";
            com = new SqlCommand(str);

            sqlda = new SqlDataAdapter(com.CommandText, con);

            dt = new DataTable();

            sqlda.Fill(dt);

            RowCount = dt.Rows.Count;

            for (int i = 0; i < RowCount; i++)
            {

                UserName = dt.Rows[i]["UserName"].ToString();

                Password = dt.Rows[i]["Password"].ToString();

                if (UserName == txtUserName.Text && Password == Encrypt(txtPassword.Text))
                {

                    Session["UserName"] = txtUserName.Text.Trim();
                    txtUserName.Visible = false;

                    txtUserName.Text = string.Empty;

                    if (dt.Rows[i]["Role"].ToString() == "Jobseeker")

                        Response.Redirect("~/JobSeeker/JobseekerHome.aspx");

                    else if (dt.Rows[i]["Role"].ToString() == "Employer")

                        Response.Redirect("~/Employer/EmployerHome.aspx");

                    else if (dt.Rows[i]["Role"].ToString() == "StaffManager")

                        Response.Redirect("~/Staff Manager/StaffManagerHome.aspx");
                    else
                    {

                        Response.Redirect("~/Admin/AdminHome.aspx");

                    }
                }

                else
                {

                    lblMsg.Text = "Invalid User Name or Password! Please try again!";

                }
              
            }
            ClearData();

        }

        private void ClearData()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            Session.Abandon();
            Session.Clear();
        }
        private string Encrypt(string clearText)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(clearText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    clearText = Convert.ToBase64String(ms.ToArray());
                }
            }
            return clearText;
        }

        protected void lnkForgotPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ForgotPassword.aspx");
        }
    }
}