<%@ Page Title="" Language="C#" MasterPageFile="~/TeacherMaster.Master" AutoEventWireup="true" CodeBehind="CallRegister.aspx.cs" Inherits="HF_SMS_APP.CallRegister" %>
  
<asp:Content ID="Content3" ContentPlaceHolderID="LogOutSetion" runat="server">
     <h5 style="font-family: 'Segoe UI'; font-style: initial; color: red; text-align: right;">
        <asp:Label runat="server" ID="lblLoginsts" />
        <asp:Button runat="server" CssClass="btn btn-logout" Text="LogOut" ID="btnLogout" OnClick="LogOut" />
    </h5>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageData" runat="server">
    <asp:GridView runat="server" ID="gv" AutoGenerateColumns="False" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="ddresponse_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" /> 
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID"  />
            <asp:BoundField DataField="StudentID" HeaderText="STUDENTID" />
            <asp:BoundField DataField="FullName" HeaderText="FULLNAME" />
            <asp:BoundField DataField="ClassNumber" HeaderText="CLASS" />
            <asp:BoundField DataField="ClassSuffix" HeaderText="SUFFIX" />
            
            <asp:TemplateField HeaderText="REGISTERED">
                <ItemTemplate>
                    <asp:DropDownList ID="ddresponse" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddresponse_SelectedIndexChanged" AppendDataBoundItems="true">   
                        <asp:ListItem Value="PRESENT"></asp:ListItem>
                        <asp:ListItem Value="ABSENT"></asp:ListItem>
                        <asp:ListItem Value="SICK"></asp:ListItem>
                    </asp:DropDownList>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ClassTeacher" HeaderText="CLASSMASTER" /> 
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />

    </asp:GridView> 
            <asp:Button Text="SUBMIT" runat="server" CssClass="btn btn-success" ID="btnSubmit" OnClick="Button1_Click" />
            <asp:Button Text="RESET" runat="server" CssClass="btn btn-warning" ID="btnReset" value="reset" OnClick="Button2_Click" />
     
</asp:Content>
