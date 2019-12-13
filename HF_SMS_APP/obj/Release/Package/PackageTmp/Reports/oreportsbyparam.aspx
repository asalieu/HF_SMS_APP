<%@ Page Title="" Language="C#" MasterPageFile="~/school.Master" AutoEventWireup="true" CodeBehind="oreportsbyparam.aspx.cs" Inherits="Register.reportsbyparam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageData" runat="server">
    <style>
        h4, label {
            color: #fff;
            text-align: justify;
            font-weight:bolder;
            font-size:22px;
            font-family:Helvetica Neue;
        }
        .btn{
            margin-top:10px;
            margin-bottom:10px;
            margin-left:5px;
            margin-right:5px;
        }
    </style>
    <div class="content" style="width:720px;margin:auto">
        <h4 style="text-align: center">
            <asp:Label Text="GENERAL REPORTS SECTION" runat="server" />
        </h4>

        <span>
            <a href="Reports/transcriptGen.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="STUDENT TRANSCRIPT" Height="39px" Width="190px" PostBackUrl="~/Reports/StudentTranscript.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="OUTSTANDING TUITIONS" Height="39px" Width="190px" PostBackUrl="~/Reports/OutstandingTuition.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="TOP (50) STUDENTS" Height="39px" Width="190px" PostBackUrl="~/Reports/TopStudents.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="STUDENTS ON SPONSORS " Height="39px" Width="190px" PostBackUrl="~/Reports/Sponsors.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="STUDENTS BY CLASS" Height="39px" Width="190px" PostBackUrl="~/Reports/StudentsByClass.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="STUDENTS BY GENDER" Height="39px" Width="190px" PostBackUrl="~/Reports/StudentsByGender.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="STUDENTS BY YEAR" Height="39px" Width="190px" PostBackUrl="~/Reports/StudentsByYear.aspx"></asp:Button>
            </a>
            <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="BLANK" Height="39px" Width="190px"></asp:Button>
            </a>
             <a href="Reports/Transcript.aspx">
                <asp:Button runat="server" Font-Names="Segoe UI" Font-Bold="true" CssClass="btn btn-primary" Text="BLANK" Height="39px" Width="190px"></asp:Button>
            </a>
        </span>
    </div>
</asp:Content>
