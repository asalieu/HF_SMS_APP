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
    public partial class modifypayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void populate()
        {
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
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
        protected void LogOut(object sender, EventArgs e)
        {

        }

        protected void lblLoginsts_DataBinding(object sender, EventArgs e)
        {

        }

        protected void txtstudentid_TextChanged(object sender, EventArgs e)
        {
            populate();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
            {
                try
                {
                    #region
                    if (txtamount.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Amount textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    } 
                    else
                    {
                        if (scon.State == ConnectionState.Closed) scon.Open();
                        {

                            SqlCommand cmd = new SqlCommand("[spUpdateReceipt]", scon);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@sid", txtstudentid.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@fname", lblstudentname.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@classnum", lblformid.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@classsufix", lblformsfx.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@amount", txtamount.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@reason", txtreason.Text.Trim().ToString()); 
                            cmd.Parameters.AddWithValue("@modify_date", SqlDbType.Date).Value = txtdatetaken.Text.ToString();
                            cmd.Parameters.AddWithValue("@free_Text", txtfreetxt.Text.Trim().ToString()); 
                            cmd.ExecuteNonQuery();

                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Student Updated Successfully....')", true);

                             
                        }
                    }
                    #endregion

                }
                catch (Exception ex)
                {
                    ex.Message.ToString();
                }

            }
        }
    }
}