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
    public partial class LoginPage : System.Web.UI.Page
    {
        string role = "admin";

        string strqry, User, Password;
        int RowCount;
        string lblmsg;
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            UserLogin();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {

        }
        protected void UserLogin()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False"))
            {
                strqry = "select *from tbl_login where username='" + txtuname.Text.ToString() + "' and password='" + txtpass.Text.ToString() + "'";
                using (SqlCommand cmd = new SqlCommand(strqry))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd.CommandText, con))
                    {
                        da.Fill(dt);
                        RowCount = dt.Rows.Count;
                        for (int i = 0; i < RowCount; i++)
                        {

                            User = dt.Rows[i]["username"].ToString().Trim();
                            Password = dt.Rows[i]["password"].ToString().Trim();

                            if (User == txtuname.Text.Trim().ToString() && Password == txtpass.Text.Trim().ToString())
                            {

                                Session["username"] = User;
                                if (dt.Rows[i]["role"].ToString().Trim() == "admin")
                                {
                                    Response.Redirect("add.aspx");
                                }

                                else if (dt.Rows[i]["role"].ToString().Trim() == "student")
                                {
                                    Response.Redirect("modify.aspx");
                                }
                            }
                            else
                            {
                                Response.Write("<script language=javascript>alert('You Are Invalid User')</script>");
                                Response.Redirect("Login.aspx");
                            }
                        }
                    }
                }

            }
        }
    }
}