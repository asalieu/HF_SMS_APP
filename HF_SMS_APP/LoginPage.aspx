<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="HF_SMS_APP.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Contents/bootstrap.css" rel="stylesheet" />
    <link href="Contents/bootstrap.min.css" rel="stylesheet" />
    <style>
         body{
             background-image:url('images/CLRJames.jpg');
             background: url('images/CLRJames.jpg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            opacity:;
        }
         
        div.login{
               margin:auto;
               background-color:inherit;
               width:400px;
               margin-top:20%;
               font-family:'Segoe UI';
               font-size:18px;
               border-radius:30px;
               opacity:;
               border:1px solid green;
               border-radius:30px;
               border:outset;

        }
        div.innerlogin{
             width:300px;
             margin:auto;
             text-align:center;
             color:#fff;
             font-family:Cataneo BT;
             font-size:22px;
             font-weight:bolder;
              
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login">
        <h4 style="text-align:center;color:beige;font-family:Cataneo BT; font-size:28px; font-weight:bolder">Librabry Application Login</h4>
       <div class="innerlogin"> 
           <span>
               <asp:Label runat="server">Username</asp:Label>
               <asp:TextBox runat="server" CssClass="form-control" ID="txtuname"></asp:TextBox> 
           </span> 
       </div>
        <div class="innerlogin">
             <span>
              <asp:Label runat="server" >Password</asp:Label>
               <asp:TextBox runat="server" CssClass="form-control" ID="txtpass"></asp:TextBox>   
           </span> 
        </div>
        <div class="innerlogin">
             <span>
              <%--<asp:Label runat="server" ID="txtrole" >User Role</asp:Label><br />
              <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                  <asp:ListItem>admin</asp:ListItem>
                  <asp:ListItem>liberian</asp:ListItem>
                  <asp:ListItem>student</asp:ListItem>
              </asp:RadioButtonList>--%>
           </span> 
        </div>
         <div class="innerlogin">
             <span>
              <asp:Button runat="server" Text="LOGIN" CssClass="btn btn-success" ID="btnLogin" OnClick="btnLogin_Click" />  
              <asp:Button runat="server" Text="RESET" CssClass="btn btn-reset" OnClick="btnReset_Click" />  
           </span> 
        </div>
    </div>
    </form>
</body>
</html>

