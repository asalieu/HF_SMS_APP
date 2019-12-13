using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HF_SMS_APP.Reports
{
    public partial class StudentTranscript : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;Initial Catalog=C:\USERS\C#\DOCUMENTS\VISUAL STUDIO 2013\PROJECTS\EXAMPRO\REGISTER\APP_DATA\DATAS.MDF;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate=False");

        ReportDocument rprt = new ReportDocument();
        string filepath;
        string sid;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void bntRunReport(object sender, EventArgs e)
        {

            showReport();
            pdfdemo();
        }
        private void showReport()
        {

            rprt.Load(Server.MapPath("~/CrystalReport1.rpt"));
            rprt.FileName = Server.MapPath("~/CrystalReport1.rpt");
            SqlCommand cmd = new SqlCommand("select * from  me where StudentID='" + txtSID.Text.Trim().ToString() + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
           // DataSetEmp ds = new DataSetEmp(); 
            trnSCRPTDS ds = new trnSCRPTDS();
            sda.Fill(ds, "me");
            rprt.SetDataSource(ds);
            rprt.SetParameterValue("_prmstudentid", txtform.Text.Trim().ToString());
            CrystalReportViewer1.ReportSource = rprt;
            CrystalReportViewer1.DataBind();
            pdfdemo();
        }
        public void pdfdemo()
        {
            
            Response.ClearContent();
            Response.ClearHeaders();
            filepath = Server.MapPath("~/" + "demo.pdf");
            rprt.ExportToDisk(ExportFormatType.PortableDocFormat,filepath);
            FileInfo fileinfo = new FileInfo(filepath);
            Response.AppendHeader("content-disposition", "attachment; demo=myfile.pdf");
            Response.ContentType = "application/pdf"; 
            Response.WriteFile(fileinfo.FullName);
        }

        public void DOXdemo()
        {
            Response.ClearContent();
            Response.ClearHeaders(); 
           // rprt.ExportToHttpResponse(ExportFormatType.WordForWindows, Response, true, );
            //FileInfo fileinfo = new FileInfo(filepath); 
            Response.ContentType = "application/msword";
            //Response.WriteFile(fileinfo.FullName);
        }
        protected void bntRunReportDoc(object sender, EventArgs e)
        {
            showReport();
            DOXdemo();
        }

        protected void bntCancel(object sender, EventArgs e)
        {

        }
    }
}