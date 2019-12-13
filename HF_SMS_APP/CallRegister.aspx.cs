using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Collections;
using System.Configuration;
namespace HF_SMS_APP
{
    public partial class CallRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillRegister();
            }
        }
        protected void fillRegister()
        {
            #region MyRegion
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\examPro\Register\App_Data\DATAS.mdf;"))
            {

                SqlDataAdapter sda = new SqlDataAdapter("select *from mydbtable", scon);
                DataSet ds = new DataSet();
                //ViewState["SQLlQuery"] = sqlQuery;
                ViewState["DATASET"] = ds;
                sda.Fill(ds);
                gv.DataSource = ds;
                gv.DataBind();
            }
            #endregion

        } 
        protected void Button2_Click(object sender, EventArgs e)
        {
            SendMail();
            
        }
        protected void SendMail()
        {

            int i = 0;
            string emailto = null;
            string ContactName = null;
            string isPresent = null;
            string reasons = null;
            string markedby = null;
            string cons = ConfigurationManager.ConnectionStrings["DATASConnectionString"].ToString();
            SqlConnection con = new SqlConnection(cons);
            con.Open(); //connection to the database.

            SqlCommand cmd_Email = new SqlCommand("select *from calldaily cd ,studentsmaster sm where sm.StudentID=cd.StudentID", con);

            SqlDataReader read_Email = cmd_Email.ExecuteReader();
            ArrayList list_emails = new ArrayList();
            while (read_Email.Read())
            {
                emailto = read_Email["ContactEmail"].ToString();
                ContactName = read_Email["FullName"].ToString();
                isPresent = read_Email["Registered"].ToString();
                markedby = read_Email["ClassTeacher"].ToString();


                list_emails.Add(read_Email["ContactEmail"]);

                MailMessage mail = new MailMessage();
                string emailFrom = "sowealieu@gmail.com";
                string password = "Mypassword@!";
                mail.To.Add(emailto);
                mail.Subject = "DAILY STUDENT ATTENDANCE REGISTER";
                mail.From = new MailAddress("sowealieu@gmail.com", "WAIS SCHOOL.COM");
                mail.IsBodyHtml = true;
                mail.Body = "<html><head></head><body>" +
                    "<h3 style='color:red;font-weight:bold;font-family:Segoe UI'>Welcom to Our School</h3><div><p>Your Child " + ContactName + " is " + isPresent + "  at School Today </p></div>" +
                     "<footer>Thank You. <br/> <b style='font-family:segou UI;font-style:italic;color:blue'>" + markedby + "<b></footer></body></html>";
                bool enableSSL = true;

                SmtpClient smtp = new SmtpClient("SMTP.gmail.com", 587);
                smtp.Credentials = new NetworkCredential(emailFrom, password);
                smtp.EnableSsl = enableSSL;
                smtp.Send(mail);
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Mail Sent Successfully.....')", true);


            }


            read_Email.Close();

            con.Close(); //Close connection'
            list_emails.Clear();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            #region MyRegionbinding postinggriddata
            foreach (GridViewRow gridrow in gv.Rows)
            {

                string recordid = gridrow.Cells[0].Text;
                string studentid = gridrow.Cells[1].Text;
                string fullname = gridrow.Cells[2].Text;
                string form = gridrow.Cells[3].Text;
                string suffix = gridrow.Cells[4].Text;
                string ddlmarkby = gridrow.Cells[6].Text;

                Control ctrl = gridrow.FindControl("ddresponse") as DropDownList;
                DropDownList ddl1 = (DropDownList)ctrl;


                using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\examPro\Register\App_Data\DATAS.mdf;"))
                {
                    scon.Open();
                    SqlCommand cmd = new SqlCommand("passgrid", scon);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", recordid.Trim().ToString());
                    cmd.Parameters.AddWithValue("@studentid", studentid.Trim().ToString());
                    cmd.Parameters.AddWithValue("@fullname", fullname.Trim().ToString());
                    cmd.Parameters.AddWithValue("@form", form.Trim().ToString());
                    cmd.Parameters.AddWithValue("@suffix", suffix.Trim().ToString());
                    cmd.Parameters.AddWithValue("@reason", ddl1.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@markby", ddlmarkby.Trim().ToString());
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Grid Data Added Successfully....')", true);

                }

            }
            #endregion 
        }

        protected void ddresponse_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LogOut(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginMain.aspx");
        }
    }
}