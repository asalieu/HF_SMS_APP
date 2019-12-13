<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DELETE.aspx.cs" Inherits="HF_SMS_APP.DELETE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageData" runat="server"> <div class="selfun">
            <h6><b style="color:#fff">SELECT A FUNCTION</b>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>ADD</asp:ListItem> 
            <asp:ListItem>MODIFY</asp:ListItem>
            <asp:ListItem>DELETE</asp:ListItem>
        </asp:DropDownList>
                <asp:Button runat="server" CssClass="active" Text="GO" OnClick="Unnamed1_Click" />
            </h6>
        </div>


    <div class="mains">
        <div class="row">
             <h6>ENTER STUDENTID:
            <asp:TextBox runat="server" ID="dtxtsid"></asp:TextBox>
                 <asp:Button runat="server" Text="LOAD" value="reset" OnClick="btnCheck_Click" />                 
                 </h6>
            <div class="col-md-6">
                <h5>STUDENT BIO DATA</h5>
                <table>
                    <tr>
                        <td>FirstName</td>
                        <td>

                            <asp:TextBox runat="server" ID="dtxtfname"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>LastName</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtlastname"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>BirthDate</td> 
                        <td>
                            <asp:TextBox runat="server" ID="dtxtdob"></asp:TextBox> 
                        </td> 
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td>
                           <asp:TextBox runat="server" ID="dtxtgender"></asp:TextBox>  
                        </td>
                    </tr>
                    <tr>
                        <td>Tribe</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxttribe"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>Parent</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtparent"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ContactEmail</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtcontactemail"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ContactPhone</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtcontactphone"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtaddress" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Nationality</td>
                        <td>
                            <asp:TextBox ID="dtxtnationality" runat="server"></asp:TextBox> 
                         </td>
                    </tr>
                    <tr>
                        <td>Ethnicity</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtethnicity"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
            
            <div class="col-md-6">
                <h5>STUDENT CLASS DATA</h5>
                <table>
                    <tr>
                        <td>StudentID</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtstudentid"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Class</td>
                        <td> 
                            <asp:TextBox runat="server" ID="dtxtclass"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>ClassSuffix</td>
                        <td>
                            <asp:TextBox ID="dtxtclsssufx" runat="server"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <td>ClassTeacher</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtclsteacher"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>DateEnrolled</td>
                        <td>
                            <asp:TextBox ID="dtxtenroldt" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>GraduationYear</td>
                        <td>
                            <asp:TextBox ID="dtxtgradyr" runat="server" dataFormatString="dd-mm-yyyy"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Scholarship Awarded</td>
                        <td>

                            <asp:TextBox runat="server" ID="dtxtscholrship"> 
                            </asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Tuition Paid Amount</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxttuition"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Club Membership</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtclub"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Religion</td>
                        <td>
                            <asp:TextBox runat="server" ID="dreligion"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Marital Status</td>
                        <td>
                            <asp:TextBox runat="server" ID="dtxtmarital"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Student Status</td>
                        <td>
                            <asp:TextBox runat="server" ID="txtstsflg"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </div>
        </div>  
         <table>
            <tr>
                <td>
                    <asp:Button Text="DELETE" runat="server" CssClass="btn btn-success" ID="btnDelete" OnClick="btnDelete_Click" />
                    <asp:Button Text="UNDELETE" runat="server" CssClass="btn btn-warning" ID="btnUndelete" value="reset" OnClick="btnUndelete_Click" />

                </td>
            </tr>
        </table>
    </div>
</asp:Content>

