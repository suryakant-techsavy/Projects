<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.master" AutoEventWireup="true" CodeFile="HallBookReq.aspx.cs" Inherits="HallBookReq" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Hall Booking Queries" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
       <div>
           <table style="width:75%;height:110%" >
               <tr>
                   <td style="text-align:center"> <asp:Label ID="Label11" runat="server" Text="Booking Request Id:-"></asp:Label></td>
                   <td class="auto-style76" style="text-align:center"> <asp:TextBox ID="TextBox6" runat="server" Width="250px" ReadOnly="True" style="text-align:center" BackColor="#D2DAC0" ></asp:TextBox>
                       <br />
        &nbsp;<asp:Label ID="Label12" runat="server" Width="279px"
                Text="Auto Generated, remember 4 furure use."></asp:Label>

                       <br />
                       <br />
         </td>
               </tr>
               <tr>
                   <td style="text-align:center">  <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>:-</td>
                   <td style="text-align:center"><asp:TextBox ID="TextBox2" runat="server" style="text-align:center" ReadOnly="True" Width="250px" BackColor="#D2DAC0"></asp:TextBox>
                       <br />
                       <br />
                   </td>
               </tr>
               <tr style="text-align:center">
                   <td><asp:Label ID="Label4" runat="server" Text="Flat_No"></asp:Label>:-</td>
                   <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="250px" style="text-align:center" BackColor="#D2DAC0" ></asp:TextBox>
                       <br />
                       <br />
                   </td>
               </tr>
               <tr style="text-align:center">
                   <td style="text-align:center"> <asp:Label ID="Label7"  runat="server" Text="Booking Request Date"></asp:Label>:-</td>
                   <td style="text-align:center">  <asp:TextBox ID="TextBox5" runat="server" style="text-align:center"  ReadOnly="True" Width="250px" BackColor="#D2DAC0"></asp:TextBox>
                       <br />
                       <br />
          </td>
               </tr>
               <caption>
                   <tr style="text-align:center">
                       <td style="text-align:center">
                           <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                           :-(Max 35 characters)</td>
                       <td style="text-align:center">
                           <asp:TextBox ID="TextBox1" runat="server" BackColor="#D2DAC0" ReadOnly="True" style="text-align:center" Width="250px">Hall Booking Request</asp:TextBox>
                           <br />
                           <br />
                       </td>
                   </tr>
                   <tr style="text-align:center">
                       <td>
                           <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>
                           :- (Max 200 characters)</td>
                       <td>
                           <asp:TextBox ID="TextBox4" runat="server" Height="81px" placeholder="Here Mention Purpose & Date for Hall Booking" style="text-align:center" TextMode="MultiLine" Width="250px"></asp:TextBox>
                           <br />
                           <br />
                       </td>
                   </tr>
                   </strong>
                   <tr style="text-align:center">
                       <td></td>
                       <td colspan="1" rowspan="1">
                           <br />
                           <asp:Button ID="Button1" runat="server" Height="28px" OnClick="Button1_Click" Text="Send" Width="167px" />
                       </td>
                   </tr>
                   <tr style="text-align:center">
                       <td></td>
                       <td colspan="1">
                           <br />
                           <br />
                       </td>
                   </tr>
               </caption>
           </table>    
      
       <br /><br /><br /><br /><br />
           <hr />
           <strong><span class="auto-style47">Reply From Secretary / Chairman
           <br />
           </span>
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" Width="884px" DataKeyNames="BookingId">
               <Columns>
                   <asp:BoundField DataField="BookingId" HeaderText="BookingId" SortExpression="BookingId" ReadOnly="True" />
                   <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
                   <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                  
                   <asp:BoundField DataField="Confirm_Date" HeaderText="Confirm_Date" SortExpression="Confirm_Date" />
                  
                   <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                  
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
               <RowStyle BackColor="White" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT BookingId, Reply, Description, Subject, Confirm_Date, Status FROM Hall_Allocation WHERE (Name = @Name) ORDER BY BookingId">
               <SelectParameters>
                   <asp:SessionParameter Name="Name" SessionField="name" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
           </strong>
           
       
       </div>
     </asp:Panel>
     </center>
        
      
</asp:Content>

