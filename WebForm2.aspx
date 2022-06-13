<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Online_Job_Portal_System.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<fieldset  "color:black"  style="width:804px; margin-left: 255px;" >
  <legend   style=" font-weight: bold; font-size: 14pt;    color: black; text-align: left;" 
        align="left"  >Latest News </legend>


    <asp:DataList ID="DataList1" runat="server" CellPadding="4" ForeColor="black"  Font-Size="12pt"
      >
        <AlternatingItemStyle BackColor="White" ForeColor="black" />
        <FooterStyle BackColor="White" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" ForeColor="black" />
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td style="font-weight: bold;">
                        Title</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Title") %>' Font-Bold="true" ></asp:Label>
                    </td>
                </tr>
                  <TR>
										<TD align="left">
											<%--<asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" 
                                                onclick="LinkButton1_Click" Text="Read More..."> Read More... </asp:LinkButton>--%>
                                        </TD>
									    <asp:Panel ID="Panel1" runat="server" Visible="true">
                                            <tr>
                                                <td style="font-weight: bold;">
                                                    Description</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                                </td>
                                            </tr>
                                           <%-- <tr>
                                                <td>
                                                    Date</td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                                              <td>
                                            </tr>  </--%>
                                        </asp:Panel>
                                       
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>

    	



</fieldset>


</asp:Content>
