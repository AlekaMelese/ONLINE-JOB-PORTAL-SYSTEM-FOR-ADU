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
namespace Online_Job_Portal_System
{
    public partial class Forgot : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                cmd.Connection = con;
                con.Open();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter("select Password from tbl_CreateAccount where  UserName='" + txtuname.Text + "'and SecurityQuestion='" + DropDownList2.SelectedItem.Text + "'and Answer= '" + txtsecanswer.Text + "'", con);


                da.Fill(ds);
                Label5.Visible = true;
                Label5.Text = "Your Password is: " + Decrypt(ds.Tables[0].Rows[0]["Password"].ToString());
                Label2.Visible = false;
                txtuname.Visible = false;
                txtsecanswer.Visible = false;
                DropDownList2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                btnsubmit.Visible = false;
               // Label1.Visible = false;

            }
            catch (Exception ex)
            {
                Label5.Text = "Invalid User Name Or Answer...!";

            }

        }

        private string Decrypt(string cipherText)
        {

            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
}