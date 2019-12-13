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
    public partial class Modify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label lbl = this.Master.FindControl("LogOutSetion").FindControl("lblLoginsts") as Label;

                lbl.Text = "Welcome!  : " + Session["username"].ToString();
                lbl.Font.Name = "Segoe UI";
                lbl.Font.Size = 14;
                lbl.Font.Italic = true;
                lbl.ForeColor = System.Drawing.Color.DarkBlue;
            }
            else
            {
                Response.Redirect("LoginPage");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
            {
                try
                {
                    #region
                    if (mtxtfname.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "FIrstName textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtlastname.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "LastName textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (DropDownList1.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Gender textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxttribe.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Tribe textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtdate.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Date textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtparent.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Parent textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;

                    }
                    else if (mtxtcontactemail.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "ContactEmail textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtcontactphone.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "ContactPhone textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtaddress.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Address textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtcountry.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Country textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (mtxtethnicity.Text.ToString() == string.Empty)
                    {
                        lblstatus.Text = "Ethnicity textbox is Empty!";
                        lblstatus.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        if (scon.State == ConnectionState.Closed) scon.Open();
                        {

                            SqlCommand cmd = new SqlCommand("[spUpdateRecs]", scon);
                            cmd.CommandType = CommandType.StoredProcedure;
                            cmd.Parameters.AddWithValue("@fname", mtxtfname.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@lname", mtxtlastname.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@dob", SqlDbType.Date).Value = mtxtdate.Text.ToString();
                            cmd.Parameters.AddWithValue("@gender", DropDownList1.Text.ToString());
                            cmd.Parameters.AddWithValue("@tribe", mtxttribe.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@parent", mtxtparent.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@email", mtxtcontactemail.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@phone", mtxtcontactphone.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@address", mtxtaddress.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@nationality", mtxtcountry.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@ethnicity", mtxtethnicity.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@sid", mtxtstudentid.Text.Trim().Trim().ToString());
                            cmd.Parameters.AddWithValue("@classnum", mtxtclass.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@classsufix", mtxtclsssufx.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@classteacher", mtxtclsteacher.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@enroldate", SqlDbType.Date).Value = mtxtenroldt.Text.ToString();
                            cmd.Parameters.AddWithValue("@gradyr", SqlDbType.Date).Value = mtxtgradyr.Text.ToString();
                            cmd.Parameters.AddWithValue("@scholashp", DropDownList2.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@tuition", mtxttuition.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@club", mtxtclub.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@religion", mtxtreligion.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@married", mtxtmarried.Text.Trim().ToString());
                            cmd.Parameters.AddWithValue("@photo", SqlDbType.Image).Value = PhotoUpload.FileContent;
                            cmd.ExecuteNonQuery();

                            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Student Updated Successfully....')", true);

                            mtxtfname.Text = "";
                            mtxtlastname.Text = "";
                            mtxtdate.Text = "";
                            mtxttribe.Text = "";
                            mtxtparent.Text = "";
                            mtxtcontactemail.Text = "";
                            mtxtcontactphone.Text = "";
                            mtxtaddress.Text = "";
                            mtxtcountry.ClearSelection();
                            mtxtethnicity.Text = "";
                            mtxtstudentid.Text = "";
                            mtxtclass.ClearSelection();
                            mtxtclsssufx.ClearSelection();
                            DropDownList2.ClearSelection();
                            DropDownList1.ClearSelection();
                            mtxtclub.Text = "";
                            mtxtreligion.Text = "";
                            mtxtmarried.Text = "";
                            mtxtclsteacher.Text = "";
                            mtxtmarried.Text = "";
                            mtxtreligion.Text = "";
                            mtxtenroldt.Text = "";
                            mtxtgradyr.Text = "";
                            mtxtgradyr.Text = "";
                            mtxtsid.Text = "";
                            myimg.ImageUrl = "";
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

        protected void btnReset_Click(object sender, EventArgs e)
        {
            mtxtfname.Text = "";
            mtxtlastname.Text = "";
            mtxtdate.Text = "";
            mtxttribe.Text = "";
            mtxtparent.Text = "";
            mtxtcontactemail.Text = "";
            mtxtcontactphone.Text = "";
            mtxtaddress.Text = "";
            mtxtcountry.ClearSelection();
            mtxtethnicity.Text = "";
            mtxtstudentid.Text = "";
            mtxtclass.ClearSelection();
            mtxtclsssufx.ClearSelection();
            DropDownList2.ClearSelection();
            DropDownList1.ClearSelection();
            mtxtclub.Text = "";
            mtxtreligion.Text = "";
            mtxtmarried.Text = "";
            mtxtclsteacher.Text = "";
            mtxtmarried.Text = "";
            mtxtreligion.Text = "";
            mtxtenroldt.Text = "";
            mtxtgradyr.Text = "";
            mtxtgradyr.Text = "";
            mtxtsid.Text = "";
            lblstatus.Text = "";
            myimg.ImageUrl = "";
            ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('FORM Cleared Successfully....')", true);

        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            //@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");
            using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
            {
                DataSet ds = new DataSet();
                SqlDataAdapter sda = new SqlDataAdapter("select *from studentsmaster where StudentID='" + mtxtsid.Text + "'", scon);
                sda.Fill(ds);

                foreach (DataRow row in ds.Tables[0].Rows)
                {
                    mtxtfname.Text = (string)row["FisrtName"].ToString();
                    mtxtlastname.Text = (string)row["LastName"].ToString();
                    mtxtdate.Text = ((DateTime)row["BirthDate"]).ToShortDateString();
                    DropDownList1.Text = (string)row["Gender"].ToString();
                    mtxttribe.Text = (string)row["Tribe"].ToString();
                    mtxtparent.Text = (string)row["Parent"].ToString();
                    mtxtcontactemail.Text = (string)row["ContactEmail"].ToString();
                    mtxtcontactphone.Text = (string)row["ContactPhone"].ToString();
                    mtxtaddress.Text = (string)row["Address"].ToString();
                    mtxtcountry.Text = (string)row["Nationality"].ToString();
                    mtxtethnicity.Text = (string)row["Ethnicity"].ToString();
                    mtxtstudentid.Text = (string)row["StudentID"].ToString();
                    mtxtclass.Text = (string)row["ClassNumber"].ToString();
                    mtxtclsssufx.Text = (string)row["ClassSuffix"].ToString();
                    mtxtclsteacher.Text = (string)row["ClassTeacher"].ToString();
                    mtxtenroldt.Text = ((DateTime)row["EnrollDdated"]).ToShortDateString();
                    mtxtgradyr.Text = ((DateTime)row["GraduationYear"]).ToShortDateString();
                    DropDownList2.Text = (string)row["Scholarship"].ToString().Trim();
                    mtxttuition.Text = (string)row["TuitionPaidAmount"].ToString();
                    mtxtclub.Text = (string)row["ClubMembership"].ToString();
                    mtxtreligion.Text = (string)row["Religion"].ToString();
                    mtxtmarried.Text = (string)row["MaritalStatus"].ToString();
                    byte[] ap = (byte[])row["photo"];
                    string bookimg = Convert.ToBase64String(ap);
                    myimg.ImageUrl = String.Format("data:image/bmp;base64,{0}", bookimg);
                }
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            #region MyRegion

            if (DropDownList3.SelectedValue.ToUpper().Trim().Contains("ADD"))
            {
                Response.Redirect("ADD.aspx");
                DropDownList3.Text = DropDownList3.SelectedValue;
            }
            else
            {
                Response.Write("Please select a function");
            }
            if (DropDownList3.SelectedValue.ToUpper().Trim().Contains("MODIFY"))
            {
                Response.Redirect("Modify.aspx");
                DropDownList3.Text = DropDownList3.SelectedValue;
            }
            else
            {
                Response.Write("Please select a function");
            }
            if (DropDownList3.SelectedValue.ToUpper().Trim().Contains("DELETE"))
            {
                Response.Redirect("DELETE.aspx");
                DropDownList3.Text = DropDownList3.SelectedValue;
            }
            else
            {
                Response.Write("Please select a function");
            }
            #endregion
        }

        protected void LogOut(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginMain.aspx");
        }
    }
}