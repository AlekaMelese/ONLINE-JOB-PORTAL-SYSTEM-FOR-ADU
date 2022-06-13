<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Home.aspx.cs" Inherits="Online_Job_Portal_System.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            height: 288px;
        }
        .style5
        {
            width: 257px;
        }
        .style6
        {
            width: 131px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <fieldset    style="width:604px; margin-left: 200px; " >
 <%--<legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  >  Job Job Seeker Detail</legend>--%>
    <table style="height: 278px" >
        
        <tr>

            <td align="center" class="style4" >
                <strong><span style="font-size: 14pt; color: black">
                <span style="color: black; font-family: normal;">
                 <h2 style=" color: black;  text-decoration: underline; width: 502px;" 
                    align="center " >
        Online Job Portal System
    </h2>
                    <p style="text-align: justify;  width: 551px; height: 268px;">
  <strong>This project is aimed at developing an online job Portal for Adigrat University.
                            The system is an online application that can be accessed throughout the in the University
                            and outside as well with proper login provided. Jobseekers logging should be able
                            to upload their information in the form of a CV. Employer of University representatives
                            logging in may also access/search any information put up by Applicants. </strong>
                    </p>
                </span></span></strong>
            </td>
            <td align="left" >
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/images (2).jpg" Height="246px"
                    Width="305px" Style="margin-left: 11px" />
            </td>
           <%-- <td>
          
   <marquee  width="350"   
                    style="border-style: solid; border-color: inherit; border-width: medium; height: 301px;" 
                    direction="up">
  Welcome to online shopping</marquee>
            </td> --%>
        </tr>
       
   </table>
    <table width="400px">

     <tr style="font-weight: bold; font-size: 12pt; " >
         
           
             <td align="left" style="color: black" class="style5" >
              
                 Adigrat University TP<br />(Tale Presence) Services)</td> 
            <td align="center" style="color: black" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               Adigrat University IP Telephone Services
            </td>
             <td align="center" style="color: black" >
                Calander
            </td>
        </tr>
    <tr>

     <td align="left" class="style5" >
         <asp:Image ID="Image1" runat="server" 
             ImageUrl="~/Images/imagesVideo.jpg" Height="145px" 
                    Width="291px"  />
            </td>
            
            <td align="left" >
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/images11.jpg" Height="140px"
                    Width="290px" Style="margin-left: 0px" />
            </td>
            
            <td>
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66"
                        BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt"
                        ForeColor="#663399" Height="111px" OnSelectionChanged="Calendar1_SelectionChanged"
                        ShowGridLines="True" Width="300px">
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
  </tr>
  
    </table><br /><br />
    <table>
    <tr>
    <td align="left" class="style6"  width="471px">
            </td>
            <td align="center">
                <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/images12.png" Height="85px"
                    Width="471px" Style="margin-left: 0px" />
            </td>
    
 </tr>
    
    
    </table>
    </fieldset>
     
    </asp:Content>
