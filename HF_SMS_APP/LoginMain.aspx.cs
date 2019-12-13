using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Register
{
    public partial class LoginMain : System.Web.UI.Page
    {
        string strqry, User, Urole, Password;
        int RowCount;
        string lblmsg;
        string ConStr = ConfigurationManager.ConnectionStrings["DATASConnectionString"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            validateLogin();
        }

        protected void validateLogin()
        {
            // Data Source=SALIEU\SQLEXPRESSO;Initial Catalog=DATAS;Integrated Security=True
            // Data Source=(LocalDB)\v11.0;AttachDbFilename="C:\Users\C#\Documents\Visual Studio 2013\Projects\examPro\Register\App_Data\DATAS.mdf";Integrated Security=True
           // using (SqlConnection scon = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\HF_SMS_APP\HF_SMS_APP\App_Data\SMSProjectDB.mdf;Integrated Security=True"))
            using (SqlConnection scon = new SqlConnection(ConStr))
            { 
                scon.Open();
                SqlCommand scm = scon.CreateCommand();
                string selQry = "select * from Users";
                scm.CommandText = selQry;
                SqlDataReader reader = scm.ExecuteReader();

                while (reader.Read()) 
                {
                    User = reader["UserName"].ToString();
                    Password = reader["Password"].ToString();
                    Urole = reader["Urole"].ToString();
                    string role = ddlRole.SelectedValue.ToString();
                    if (User == txtUserName.Text.Trim().ToString() && Password == txtPassword.Text.Trim().ToString() && role == "Admin")
                    {
                        Session["UserName"] = User;
                        Response.Redirect("~/Add.aspx");
                    }

                    if (User == txtUserName.Text.Trim().ToString() && Password == txtPassword.Text.Trim().ToString() && role == "Teacher")
                    {
                        Session["UserName"] = User;
                        Response.Redirect("~/CallRegister.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock
                            (Page,typeof(Page),"ClientScript", "alert('Incorrect Credentials....')",true); 
                    }
                }
            }
        }
    }
}