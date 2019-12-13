<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentTranscript.aspx.cs" Inherits="HF_SMS_APP.Reports.StudentTranscript" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageData" runat="server"> <div style="margin:auto; background-color: #fff">
      <style type="text/css">
        label {
            width:120px;
             
        }
        TextBox{
            width:120px; 
        }
        Button{
             
        }
    </style>  
     <div style="min-height:200px; background-color: #fff; text-align:center"> 
            <h4 style="font-family:'Segoe UI';font-style:italic; text-align: center;">Enter Student ID and Class Below</h4>
            <table>
                <tr>
                    <td>
                        <label>Student ID :</label>
                        <asp:TextBox runat="server" ID="txtSID"></asp:TextBox>
                        <label>Form ID :</label>
                        <asp:TextBox runat="server" ID="txtform"></asp:TextBox><br />
                        <label>Academic Year:</label>
                        <asp:TextBox runat="server" ID="TextBox2"></asp:TextBox>
                        <label>Academic Year:</label>
                        <asp:TextBox runat="server" ID="TextBox1"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
             <table style="text-align:center">
                <tr>
                    <td colspan="1">
                        <asp:Button runat="server" Text="Generate PDF" OnClick="bntRunReport" ID="btnGenerate" CssClass="btn btn-success active" />
                    </td>
                    <td colspan="1">
                        <asp:Button runat="server" Text="Generate DOC" OnClick="bntRunReportDoc" ID="btnGenerateDOC" CssClass="btn btn-success active" />
                    </td>
                    <td colspan="1">
                        <asp:Button runat="server" Text="Cancel" OnClick="bntCancel" ID="btnCancel" CssClass="btn btn-warning active" />
                    </td>
                </tr>
            </table> 
           </div> 
     
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
    </div>
</asp:Content>