<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginType.aspx.cs" Inherits="Online_Job_Portal_System.LoginType" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <fieldset  "color:black"  style="width:604px; margin-left: 255px;" >
 <legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  > Please Select Your Account Type</legend>
    <table border="1" cellpadding="0" cellspacing="0" style="height: 226px" 
        align="center" >
        <tr>
            <td valign="middle">
                <img src="Images/ccv.jpg" style="height: 201px" />
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" BackColor="#cc3300" 
                                   Font-Bold="True" ForeColor="White" GroupName="r1" OnCheckedChanged="RadioButton1_CheckedChanged"
                    Text="Job Seeker create Account" Width="195px" /></td>
            <td valign="middle">
            </td>
            
                     <td valign="middle">
                &nbsp;<img src="Images/aa.png" />
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" BackColor="#cc3300"
                    Font-Bold="True" ForeColor="White" GroupName="r1"
                    Text="Employer  create Account" Width="212px" 
                              oncheckedchanged="RadioButton2_CheckedChanged" /></td>
                      <td valign="middle">
                &nbsp;<img src="Images/aa.png" />
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" BackColor="#cc3300"
                    Font-Bold="True" ForeColor="White" GroupName="r1"
                    Text="Staff Manager   create Account" Width="212px" 
                              oncheckedchanged="RadioButton3_CheckedChanged1" /></td>
        </tr>
    </table>
    </fieldset>
</asp:Content>
