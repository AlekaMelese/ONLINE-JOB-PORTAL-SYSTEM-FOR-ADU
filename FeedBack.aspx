<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Online_Job_Portal_System.FeedBack" %>
<%@ Register Assembly="GMDatePicker" Namespace="GrayMatterSoft" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <br />
    <fieldset  "color:black"  style="width:604px; margin-left: 255px;" >
 <legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  > Give Your FeedBack</legend>
    <table align="center">
   <%-- <tr>
            <td align="center" colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Width="297px" ForeColor="red"></asp:Label>
            </td>
           
        </tr>--%>
        <%--<tr>
            <td colspan="2" align="center" style="text-decoration: underline">
                <strong><span style="font-size: 16pt; color: black;">FeedBack</span></strong>
            </td>
           
        </tr>--%>
         <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 12pt;">
                <span style="color: black">User Name:</span>
            </td>
            <td align="left" colspan="2">
                <asp:TextBox ID="txtActNo" runat="server" Width="189px" Height="22px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtActNo"
                   ForeColor="Red"  ErrorMessage="Please Enter UserName" ValidationGroup="g1"></asp:RequiredFieldValidator>
                
                
                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" TargetControlID="txtActNo"
                    FilterType="LowercaseLetters,UppercaseLetters ,Custom" ValidChars=" ,-,_," runat="server">
                </asp:FilteredTextBoxExtender>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 12pt;" >
                <span style="color: black">Email Id:</span>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" Width="189px" ValidationGroup="g1"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtEmail"
                 ForeColor="Red"  ErrorMessage="Please Enter Email" ValidationGroup="g1"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Invalid Email Id"
                    ForeColor="red"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td align="left" style="font-weight: bolder; font-size: 12pt;">
                <span style="color: black">Feedback:</span>
            </td>
            <td>
                <asp:TextBox ID="txtMsg" runat="server" Height="133px" MaxLength="200" TextMode="MultiLine"
                    Width="328px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMsg"
                   ForeColor="Red"  ErrorMessage="Please Enter your Feedback" ValidationGroup="g1"></asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr><td align="left" class="style3">
            </td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="10pt" ValidationGroup="g1"
                    Text="Send" onclick="Button1_Click" />
            </td>
        </tr>
        
    </table>
      
    </fieldset></asp:Content>
