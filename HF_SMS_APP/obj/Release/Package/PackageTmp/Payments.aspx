<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="HF_SMS_APP.Payments" %>
  
<asp:Content ID="Content3" ContentPlaceHolderID="LogOutSetion" runat="server">
     <style type="text/css">
        .mrakstable, tr, td {
            width: 50%;
            margin: auto;
        }

        .mrakstable, label {
            color: #fff;
            font-family: 'Segoe UI';
            font-size: 20px;
        }
    </style>
    <h5 style="font-family: 'Segoe UI'; font-style: initial; color: red; text-align: right;">
        <asp:Label runat="server" ID="lblLoginsts" OnDataBinding="lblLoginsts_DataBinding" />
        <asp:Button runat="server" CssClass="btn btn-logout" Text="LogOut" ID="btnLogout" OnClick="LogOut" />
    </h5>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageData" runat="server">
    <div class="mrakstable">
        <span>
            <em>Student MarkSheet and scores Entry Section </em>
            <br />
            <br />
        </span>
        <table>
            <tr>
                <td>
                    <asp:Label Text="StudentID" runat="server" />
                </td>
                <td>
                    <asp:TextBox ID="txtstudentid" runat="server" CssClass="form-control" OnTextChanged="txtstudentid_TextChanged" AutoPostBack="True" />
                </td>
                <td>
                    <asp:Label ID="lblstudentname" Width="160" AutoPostBack="true" runat="server" />
                </td> 
                <td>
                    /<asp:Label ID="lblformid" AutoPostBack="true" runat="server" />/
                </td> 
                <td>
                    <asp:Label ID="lblformsfx" AutoPostBack="true" runat="server" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label Text="Subject" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtsubject" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Date Taken" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server"  TextMode="Date"  CssClass="form-control" ID="txtdatetaken" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Score" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtscore" />
                </td>
            </tr> 
            <tr>
                <td>
                    <asp:Label Text="Term" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtbatchno" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Year" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" CssClass="form-control" ID="txtYr" placeholder=" e.g 2018" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Action" runat="server" />
                </td>
                <td colspan="2">
                    <asp:Button Text="SAVE" ID="btnSave" runat="server" BackColor="Green" OnClick="btnSave_Click" />
                    <asp:Button Text="RESET" runat="server" />
                </td>

            </tr>
        </table>
    </div>
</asp:Content>
