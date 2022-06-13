<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Online_Job_Portal_System.Forgot" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <fieldset  "color:black"  style="width:604px; margin-left: 255px;" >
 <legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  > Forgot Password</legend>
 <table align="center" border="0">
    <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp;
            </td>
        </tr>
          <%-- <td align="right" class="style3">
                    &nbsp;</td> 
                     <td align="center" class="style5" >
                <asp:Label ID="Label1" runat="server" Font-Underline="true" ForeColor="Black" Font-Size="X-Large" Text="Forgot Password"  Font-Bold="true"  ></asp:Label></td>
                 <tr style="font-size: 12pt">
            <td align="center" colspan="3" style="height: 19px">
                &nbsp; &nbsp;
            </td>--%>
        </tr>
                <tr>
                <td align="right" class="style3" >
                    <asp:Label ID="Label2" runat="server" Text="User Name" Font-Bold="true" ForeColor="Black" style="font-size: 12pt;"></asp:Label>&nbsp;
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtuname" runat="server" Width="190px"  ValidationGroup="g3"></asp:TextBox></td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname"
                    ForeColor="Red" ErrorMessage="Please Enter correct UserName"  >Please Enter Correct UserName</asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label3" runat="server" Font-Bold="true" ForeColor="Black" style="font-size: 12pt;">Security Question</asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="195px">
                       
                        <asp:ListItem>What Is Your Pet name</asp:ListItem>
                    <asp:ListItem>What Is Your Favourite Pass Time</asp:ListItem>
                    <asp:ListItem>what is ur Born Places</asp:ListItem>
                    <asp:ListItem>You crazy about </asp:ListItem>
                    <asp:ListItem>your Father's middle Name</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2"  ValidationGroup="g3"
                      ForeColor="Red"  InitialValue="Select" >Please Select Any One </asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Security Answer" ForeColor="Black" Font-Bold="true" style="font-size: 12pt;"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="txtsecanswer" runat="server" Height="22px" Width="190px"  ValidationGroup="g3"></asp:TextBox>
                </td>
                <td class="style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsecanswer"  
                        ForeColor="Red" ErrorMessage="enter security answer">Please Enter Correct Answer</asp:RequiredFieldValidator></td>
            </tr>
            <tr valign="top" >
             <td align="left" class="style3">
                    </td>
                
                <td align="left" class="style5">
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" onclick="btnsubmit_Click" 
                        />
                         <asp:Button ID="Button1" runat="server" Text="Back>>" onclick="Button1_Click"   ValidationGroup="g2"
                        />
                </td>
                
            </tr>

            <tr><td align="left" class="style3">
                    </td><td align="left" class="style5">
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"  ForeColor="red" Font-Size="Large"></asp:Label>
                </td>
            
            </tr>



        
       
            <tr>
                <td align="right" class="style3">
                    &nbsp;</td>
                <td class="style5"  >
                    <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/Login.aspx">LOGIN </asp:HyperLink>
                </td>
            </tr> 
        </table>
        </fieldset>
</asp:Content>
