using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace HF_SMS_APP
{
    public partial class MarksEntry : System.Web.UI.Page
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

        protected void txtstudentid_TextChanged(object sender, EventArgs e)
        {
            populate();
        }

        void passScores()
        {
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
            {
                scon.Open();
                using (SqlCommand scm = new SqlCommand("spMarkEntry", scon))
                {
                    
                    scm.CommandType = CommandType.StoredProcedure;
                    scm.Parameters.AddWithValue("@sid", txtstudentid.Text.Trim());
                    scm.Parameters.AddWithValue("@fullname", lblstudentname.Text.Trim());
                    scm.Parameters.AddWithValue("@classnum", lblformid.Text.Trim());
                    scm.Parameters.AddWithValue("@classsufix", lblformsfx.Text.Trim());
                    scm.Parameters.AddWithValue("@subject", txtsubject.Text.Trim());
                    scm.Parameters.AddWithValue("@datetaken", SqlDbType.Date).Value = txtdatetaken.Text.ToString();
                    scm.Parameters.AddWithValue("@score", txtscore.Text.Trim());
                    scm.Parameters.AddWithValue("@term", txtbatchno.Text.Trim());
                    scm.Parameters.AddWithValue("@academicYear", txtYr.Text.Trim().ToString());
                    scm.ExecuteNonQuery();
                    clearAll();
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Saved Sucessfully !!!')", true);
                }
            }
        }
        void clearAll()
        { 
            txtbatchno.Text = "";
            txtdatetaken.Text = "";
            txtscore.Text = "";
            txtstudentid.Text = "";
            txtYr.Text = "";
            txtsubject.Text = "";
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            passScores();

            //using (SqlConnection scon = new SqlConnection(@"Data Source=SALIEU\SQLEXPRESSO;Initial Catalog=DATAS;Integrated Security=True"))
            //{
            //    scon.Open();
            //    SqlCommand scm = new SqlCommand("passmarks", scon);
            //    scm.CommandType = CommandType.StoredProcedure; 
            //    scm.Parameters.AddWithValue("@sid",SqlDbType.NChar).Value= txtstudentid.Text.Trim();
            //    scm.Parameters.AddWithValue("@subject", SqlDbType.NChar).Value=txtsubject.Text.Trim();
            //    scm.Parameters.AddWithValue("@datetaken", SqlDbType.Date).Value = txtdatetaken.Text.ToString();
            //    scm.Parameters.AddWithValue("@score",SqlDbType.NChar).Value= txtscore.Text.Trim(); 
            //    scm.Parameters.AddWithValue("@batchno", SqlDbType.NChar).Value=txtbatchno.Text.Trim();
            //    scm.Parameters.AddWithValue("@semester",SqlDbType.NChar).Value=txtcredits.Text.Trim().ToString();
            //    scm.Parameters.AddWithValue("@yr",SqlDbType.NChar).Value= txtYr.Text.Trim().ToString();
            //    scm.ExecuteNonQuery();
            //    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Data Saved Sucessfully !!!')", true);
             
            //}
        }

        protected void LogOut(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginMain.aspx");
        }
    }
}