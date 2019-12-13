﻿using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using CrystalDecisions.Web;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Register.Reports
{
    public partial class StudentTranscript : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\C#\Documents\Visual Studio 2013\Projects\examPro\Register\App_Data\DATAS.mdf");
        ReportDocument rprt = new ReportDocument();
        string filepath;  
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
            SqlCommand cmd = new SqlCommand("select * from  me where StudentID='" + txtSID.Text.Trim().ToString()+ "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSetEmp ds = new DataSetEmp();
            sda.Fill(ds,"me");
            rprt.SetDataSource(ds);
            rprt.SetParameterValue("stdname", txtform.Text.Trim().ToString());
            CrystalReportViewer1.ReportSource = rprt;
            CrystalReportViewer1.DataBind();
            pdfdemo();
        }
        public void pdfdemo()
        {
            Response.Clear();
            filepath = Server.MapPath("~/" + "demo.pdf");
            rprt.ExportToDisk(ExportFormatType.PortableDocFormat, filepath);
            FileInfo fileinfo = new FileInfo(filepath);
            Response.AppendHeader("content-disposition", "attachment; demo=myfile.pdf"); 
            Response.ContentType = "application/pdf"; 
            Response.WriteFile(fileinfo.FullName); 
        }

        protected void bntRunReportDoc(object sender, EventArgs e)
        {

        }

        protected void bntCancel(object sender, EventArgs e)
        {

        }  
        
    }
}