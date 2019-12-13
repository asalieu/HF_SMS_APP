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
    public partial class Add : System.Web.UI.Page
    {
        SqlConnection lcon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\HF_SMS_APP\HF_SMS_APP\App_Data\SMSProjectDB.mdf;Integrated Security=True");

        string role = "admin";

        string strqry, User, Password;
        int RowCount;
        string lblmsg;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"]!=null)
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

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            #region MyRegion

            if (DropDownList1.SelectedValue.ToUpper().Contains("ADD"))
            {
                Response.Redirect("ADD.aspx");
            }
            if (DropDownList1.SelectedValue.ToUpper().Contains("MODIFY"))
            {
                Response.Redirect("Modify.aspx");
            }
            else if (DropDownList1.SelectedValue.ToUpper().Contains("DELETE"))
            {
                Response.Redirect("DELETE.aspx");
            }
            #endregion
        } 

        protected void btnReset_Click(object sender, EventArgs e)
        {
            #region ClearActionRegion
            if (txtfname.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Nothing to clear....')", true);
            }
            else if (txtfname.Text != "")
            {
                ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Form reset Done !!!')", true);
                #region MyRegion
                txtfname.Text = "";
                txtlastname.Text = "";
                txttribe.Text = "";
                txtparent.Text = "";
                txtcontactemail.Text = "";
                txtcontactphone.Text = "";
                txtaddress.Text = "";
                txtcountry.Text = "";
                txtethnicity.Text = "";
                txtstudentid.Text = "";
                txtclass.Text = "";
                txtclsssufx.Text = "";
                txtscholrship.Text = "";
                txtclub.Text = "";
                txtreligion.Text = "";
                txtmarried.Text = "";
                txtclsteacher.Text = "";
                txtclsssufx.ClearSelection();
                txtclass.ClearSelection();
                txtcountry.ClearSelection();
                txtscholrship.ClearSelection();
                #endregion
            }
            #endregion 
        }

        protected void btnSave_Click1(object sender, EventArgs e)
        {
            #region TextBoxes Validation Here
            if (txtfname.Text == "")
            {
                lblstatus.Text = "FisrName Not Entered";
                lblstatus.Font.Name = "tahoma";
                lblstatus.Font.Size = 14;
                lblstatus.BackColor = System.Drawing.Color.Red;
                lblstatus.Font.Italic = true;
                lblstatus.Font.Name = "segoe UI";
                return;
            }
            else if (txtlastname.Text == "")
            {
                lblstatus.Text = "LastName Not Entered";
                lblstatus.Font.Size = 14;
                lblstatus.BackColor = System.Drawing.Color.Red;
                lblstatus.Font.Italic = true;
                lblstatus.Font.Name = "segoe UI";
                return;
            }
            else if (txtparent.Text == "")
            {
                lblstatus.Text = "Parent Not Entered";
                lblstatus.Font.Size = 14;
                lblstatus.BackColor = System.Drawing.Color.Red;
                lblstatus.Font.Italic = true;
                lblstatus.Font.Name = "segoe UI";
                return;
            }
            else if (txtcontactphone.Text == "")
            {

                lblstatus.Text = "Phone No. Not Entered";
                lblstatus.Font.Size = 14;
                lblstatus.BackColor = System.Drawing.Color.Red;
                lblstatus.Font.Italic = true;
                lblstatus.Font.Name = "segoe UI";
                return;
            }
            else if (txtaddress.Text == "")
            {
                lblstatus.Text = "Address Not Entered";
                lblstatus.Font.Size = 14;
                lblstatus.BackColor = System.Drawing.Color.Red;
                lblstatus.Font.Italic = true;
                lblstatus.Font.Name = "segoe UI";
                return;
            }
            else
            {
                try
                {
                    if (lcon.State == ConnectionState.Closed) lcon.Open();
                    {
                        SqlCommand cmd = new SqlCommand("spAddStudentRecs", lcon);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@fname", txtfname.Text.ToString());
                        cmd.Parameters.AddWithValue("@lname", txtlastname.Text.ToString());
                        cmd.Parameters.AddWithValue("@dob", SqlDbType.Date).Value = RadDatePicker1.SelectedDate;
                        cmd.Parameters.AddWithValue("@gender", sextxt.SelectedItem.ToString());
                        cmd.Parameters.AddWithValue("@tribe", txttribe.Text.ToString());
                        cmd.Parameters.AddWithValue("@parent", txtparent.Text.ToString());
                        cmd.Parameters.AddWithValue("@email", txtcontactemail.Text.ToString());
                        cmd.Parameters.AddWithValue("@phone", txtcontactphone.Text.ToString());
                        cmd.Parameters.AddWithValue("@address", txtaddress.Text.ToString());
                        cmd.Parameters.AddWithValue("@nationality", txtcountry.Text.ToString());
                        cmd.Parameters.AddWithValue("@ethnicity", txtethnicity.Text.ToString());
                        cmd.Parameters.AddWithValue("@sid", txtstudentid.Text.ToString());
                        cmd.Parameters.AddWithValue("@classnum", txtclass.Text.ToString());
                        cmd.Parameters.AddWithValue("@classsufix", txtclsssufx.Text.ToString());
                        cmd.Parameters.AddWithValue("@classteacher", txtclsteacher.Text.ToString());
                        cmd.Parameters.AddWithValue("@enroldate", SqlDbType.Date).Value = RadDatePicker2.SelectedDate;
                        cmd.Parameters.AddWithValue("@gradyr", SqlDbType.Date).Value = RadDatePicker3.SelectedDate;
                        cmd.Parameters.AddWithValue("@scholashp", txtscholrship.Text.ToString());
                        cmd.Parameters.AddWithValue("@tuition", txttuition.Text.ToString());
                        cmd.Parameters.AddWithValue("@club", txtclub.Text.ToString());
                        cmd.Parameters.AddWithValue("@religion", txtreligion.Text.ToString());
                        cmd.Parameters.AddWithValue("@married", txtmarried.Text.ToString());
                        cmd.Parameters.AddWithValue("@photo", SqlDbType.Image).Value = PhotoUpload.FileContent;
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterClientScriptBlock(Page, typeof(Page), "ClientScript", "alert('Student Added Successfully....')", true);

                        txtfname.Text = "";
                        txtlastname.Text = "";
                        txttribe.Text = "";
                        txtparent.Text = "";
                        txtcontactemail.Text = "";
                        txtcontactphone.Text = "";
                        txtaddress.Text = "";
                        txtcountry.Text = "";
                        txtethnicity.Text = "";
                        txtstudentid.Text = "";
                        txtclass.Text = "";
                        txtclsssufx.Text = "";
                        txtscholrship.Text = "";
                        txtclub.Text = "";
                        txtreligion.Text = "";
                        txtmarried.Text = "";
                        txtclsteacher.Text = "";
                        txtclass.ClearSelection();
                        txtcountry.ClearSelection();
                        txtscholrship.ClearSelection();
                        txttuition.Text = "";
                        sextxt.ClearSelection();
                        txtclsssufx.ClearSelection();
                        RadDatePicker1.Clear();
                        RadDatePicker2.Clear();
                        RadDatePicker3.Clear();

                    }
                }
                catch (Exception)
                {

                    throw;
                }
            }

            #endregion
        }

        protected void btn_Logout(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("LoginMain.aspx");
        }

        protected void LogOut(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LoginMain.aspx");
        }
    }
}