<%@ Page Title="" Language="C#" MasterPageFile="~/AccountantMaster.Master" AutoEventWireup="true" CodeBehind="addpayment.aspx.cs" Inherits="HF_SMS_APP.addpayment" %>

<asp:Content ID="Content3" ContentPlaceHolderID="LogOutSetion" runat="server">
    <style type="text/css">
        .mrakstable, tr, td {
            width: 65%;
            margin: auto;
            border:1px solid #fff;
            background:#2d2456;
            border-top-right-radius:30px;
            border-bottom-right-radius:30px;
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
         <h4 style="text-align:center;font-family:'Frutiger LT 45';font-weight:bold;font-size:22px;">
             Payment Entry and Receipt Generation Section 
            <br />
            <br />
        </h4> 
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
                <td>/<asp:Label ID="lblformid" AutoPostBack="true" runat="server" />/
                </td>
                <td>
                    <asp:Label ID="lblformsfx" AutoPostBack="true" runat="server" />
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label Text="Payment For" runat="server" />
                </td>
                <td>
                    <asp:DropDownList runat="server" ID="txtreason" CssClass="form-control"> 
                        <asp:ListItem Value="SELECT">--SELECT OPTION--</asp:ListItem>
                        <asp:ListItem Value="Tuition">Tuition</asp:ListItem>
                        <asp:ListItem Value="Exam Fee">Exam Fee</asp:ListItem>
                        <asp:ListItem Value="Others">Others</asp:ListItem> 
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label Text="Amount" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server"  CssClass="form-control" ID="txtamount" />
                </td>
            </tr> 
            <tr>
                <td>
                    <asp:Label Text="Date Taken" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server" TextMode="Date" CssClass="form-control" ID="txtdatetaken" />
                </td>
            </tr> 
            <tr>
                <td>
                    <asp:Label Text="Free Text" runat="server" />
                </td>
                <td>
                    <asp:TextBox runat="server"  CssClass="form-control" ID="txtfreetxt" />
                </td>
            </tr>   
            <tr>
                <td>
                    <asp:Label Text="Action" runat="server" />
                </td>
                <td colspan="1">
                    <asp:Button Text="SAVE" ID="btnSave" runat="server" BackColor="Green" OnClick="btnSave_Click" />
                    <asp:Button Text="RESET" runat="server" OnClientClick="ClearAll" />
                </td>

            </tr>
        </table>
    </div>
</asp:Content>
