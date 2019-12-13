<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginMain.aspx.cs" Inherits="Register.LoginMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            /*min-height: 400px;*/
    background: url(GHr12sH.png) no-repeat center center fixed;     
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
        }
    </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="w"> 
        <div class="legend" style="background:#fff;width:620px;height:300px;margin:auto;border-top-right-radius:80px" >
            <h4 style="text-align:center;margin-top:190px;font-family:'Segoe UI';font-style:normal">APPLICATION USER LOGIN</h4>
             <div style="text-align:center;margin-bottom:10px;margin-top:30px">
                 <span>
                     <asp:TextBox runat="server" ID="txtUserName" placeholder="UserName" Width="260px" Height="30px" TextMode="SingleLine"></asp:TextBox>
                 </span>
             </div> 
            <div style="text-align:center;margin-bottom:10px">
                 <span>
                     <asp:TextBox runat="server" ID="txtPassword" placeholder="Password" Width="260px" Height="30px" TextMode="Password"></asp:TextBox>
                 </span>
             </div>
            <div style="text-align:center;margin-bottom:10px">
                <span>
                    <asp:DropDownList runat="server" ID="ddlRole">
                        <asp:ListItem>--SELECT ROLE--</asp:ListItem>
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>Client</asp:ListItem>
                        <asp:ListItem>Teacher</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
            <div style="text-align:center">
                 <span> 
                     <asp:Button runat="server" Text="LOGIN" Width="260" ID="btnLogin" Height="40" BackColor="#009900"  CssClass="btn btn-success glyphicon glyphicon-log-in"  OnClick="btnLogin_Click"/>
                 </span>
             </div>
            <div style="margin-top:130px;float:right">
                <p>Forgot Your Password ? 
                 <a href="#">Click Here</a> </p>
            </div>
        </div> 
    </div>
    
    </div>
    </form>
</body>
</html>
