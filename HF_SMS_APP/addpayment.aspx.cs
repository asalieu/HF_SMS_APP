using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF_SMS_APP
{
    public partial class addpayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void populate()
        {  
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\HF_SMS_APP\HF_SMS_APP\App_Data\SMSProjectDB.mdf;Integrated Security=True"))
            {
                string SelQry = "select CONCAT(FisrtName ,' '+ ''+LASTNAME) AS FullName,ClassNumber,ClassSuffix,EnrollDdated,GraduationYear from studentsmaster where studentid='" + txtstudentid.Text.Trim().ToString() + "'";
                using (SqlDataAdapter sda = new SqlDataAdapter(SelQry, scon))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    foreach (DataRow dr in dt.Rows)
                    {

                        lblstudentname.Text = (string)dr["FullName"].ToString().Trim();
                        //lbllname.Text = (string)dr["LastName"];
                        lblformid.Text = (string)dr["ClassNumber"];
                        lblformsfx.Text = (string)dr["ClassSuffix"];
                    }
                }
            }
        }
        void passpayment()
        {
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\HF_SMS_APP\HF_SMS_APP\App_Data\SMSProjectDB.mdf;Integrated Security=True"))
            {
                scon.Open();
                using (SqlCommand scm = new SqlCommand("sppymntEntry", scon))
                {

                    scm.CommandType = CommandType.StoredProcedure;
                    scm.Parameters.AddWithValue("@sid", txtstudentid.Text.Trim());
                    scm.Parameters.AddWithValue("@fullname", lblstudentname.Text.Trim());
                    scm.Parameters.AddWithValue("@classnum", lblformid.Text.Trim());
                    scm.Parameters.AddWithValue("@classsufix", lblformsfx.Text.Trim());
                    scm.Parameters.AddWithValue("@amount", txtamount.Text.Trim());
                    scm.Parameters.AddWithValue("@reason", SqlDbType.NChar).Value = txtreason.SelectedValue.Trim().ToString();
                    scm.Parameters.AddWithValue("@date_entered", SqlDbType.Date).Value = txtdatetaken.Text.ToString();
                    scm.Parameters.AddWithValue("@freetext", txtfreetxt.Text.Trim().ToString());
                    scm.ExecuteNonQuery();
                    clearAll();
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Saved Sucessfully !!!')", true);
                }
            }
        }
        void clearAll()
        {
            txtfreetxt.Text = "";
            txtdatetaken.Text = "";
            lblformid.Text = "";
            txtstudentid.Text = "";
            lblformsfx.Text = "";
            txtamount.Text = "";
            txtreason.ClearSelection();
            lblstudentname.Text = "";
            //txtsubject.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            passpayment();
        }

        protected void txtstudentid_TextChanged(object sender, EventArgs e)
        {
            populate();
        }

        protected void lblLoginsts_DataBinding(object sender, EventArgs e)
        {

        }

        protected void LogOut(object sender, EventArgs e)
        {

        }
    }
}