<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Online_Job_Portal_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 
<br /><fieldset  "color:black"  style="width:604px; margin-left: 255px;" >
  <legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  >Login page </legend>

    <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 497px">
    <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
       <tr style="font-size: 12pt" >
            <td align="left" style="font-size: 12pt; color: #ffffff; text-align: left;" 
                class="style3">
                <strong style="color: black">User Name:</strong></td>
            <td class="style4" >
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtUserName" runat="server" Width="163px" ValidationGroup="g1"></asp:TextBox>
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"
                   ForeColor="Red"  ErrorMessage="UserName is Required" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="left" style="font-size: 12pt; color: #ffffff; text-align: left;" 
                class="style3">
                <strong style="color: black">Password:</strong></td>
            <td class="style4">
                <span style="color: #ff0000; font-weight: bold; font-size: 12pt;">*</span></td>
            <td align="left">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="163px" ValidationGroup="g1"></asp:TextBox>
           
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword"
                    ForeColor="Red" ErrorMessage="Password is Required" ValidationGroup="g1"></asp:RequiredFieldValidator></td>
        </tr>
        
        <tr style="font-size: 12pt">
        <td align="left" class="style3">
                    &nbsp;</td>
            <td align="left" colspan="4" >
            
             <asp:Button ID="btnLogin" runat="server"  Text="Login"
                    Width="75px" ValidationGroup="g1" style="margin-left: 8px" onclick="btnLogin_Click" 
                     />
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
      

        <tr style="font-size: 12pt">
           <td align="left" class="style3">
                    </td> <td align="left" colspan="2">
                <asp:LinkButton ID="lnkForgotPassword" runat="server" Font-Bold="True" 
                    ForeColor="blue" onclick="lnkForgotPassword_Click" 
                   >Forgot Password </asp:LinkButton></td>
        </tr>
         <tr style="font-size: 12pt">
        <td align="left" class="style3">
                    </td>
            <td align="left" colspan="4" style="font-size: 12pt; color: #ffffff" valign="middle">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="blue" 
                    NavigateUrl="~/LoginType.aspx" Width="107px">Register Me !</asp:HyperLink></td>
        </tr>
        <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="font-size: 12pt; color: #ffffff" 
                valign="middle">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="13pt" ForeColor="Red"
                   ></asp:Label></td>
        </tr>
    </table>

 </fieldset>
</asp:Content>
