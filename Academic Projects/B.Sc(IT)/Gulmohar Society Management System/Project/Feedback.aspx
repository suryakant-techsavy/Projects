<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    
 
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#CCFF66" CssClass="auto-style7" ForeColor="Red" Height="54px" style=" font-size: large;" Text="Feedback/Queries" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
       <div>
           <table style="width:75%;height:110%" >
               <tr>
                   <td style="text-align:center"> <asp:Label ID="Label11" runat="server" Text="Query Id:-"></asp:Label></td>
                   <td class="auto-style76" style="text-align:center"> <asp:TextBox ID="TextBox6" runat="server" Width="250px" ReadOnly="True" BackColor="#D2DAC0" ></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Reload the page"></asp:RequiredFieldValidator>
                       <br />
        &nbsp;<asp:Label ID="Label12" runat="server" Width="279px"
                Text="Auto Generated, remember 4 furure use."></asp:Label>

                       <br />
                       <br />
         </td>
               </tr>
               <tr>
                   <td style="text-align:center">  <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>:-</td>
                   <td style="text-align:center"><asp:TextBox ID="TextBox2" runat="server" ReadOnly="True" Width="250px" BackColor="#D2DAC0"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Name Required"></asp:RequiredFieldValidator>
                       <br />
                       <br />
                   </td>
               </tr>
               <tr style="text-align:center">
                   <td><asp:Label ID="Label4" runat="server" Text="Flat_No"></asp:Label>:-</td>
                   <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="250px"  BackColor="#D2DAC0"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Flat_No Required"></asp:RequiredFieldValidator>
                       <br />
                       <br />
                   </td>
               </tr>
               <tr style="text-align:center">
                   <td style="text-align:center"> <asp:Label ID="Label7"  runat="server" Text="Date"></asp:Label>:-</td>
                   <td style="text-align:center">  <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged" ReadOnly="True" Width="250px" BackColor="#D2DAC0"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Date Required"></asp:RequiredFieldValidator>
                       <br />
                       <br />
          </td>
               </tr>
               <tr style="text-align:center">
                   <td style="text-align:center">    <asp:Label ID="Label2" runat="server" Text="Subject"></asp:Label>
                       :-(Max 35 characters)</td>
                   <td style="text-align:center"><asp:TextBox ID="TextBox1" runat="server" Width="250px"  ></asp:TextBox> 
                       <br />
                       <br />
                   </td> 
               </tr>
               <tr style="text-align:center">
                   <td> <asp:Label ID="Label5" runat="server" Text="Description"></asp:Label>:- (Max 200 characters)</td>
                   <td> <asp:TextBox ID="TextBox4" runat="server" Height="81px" TextMode="MultiLine" Width="250px" ></asp:TextBox>
                       <br />
                       <br />
                   </td>
               </tr style="text-align:center">     </strong>
               <tr style="text-align:center"><td></td>
 <td rowspan="1" colspan="1"> 
     <br />
     <asp:Button ID="Button1" runat="server" Height="28px" Text="Send" Width="167px" OnClick="Button1_Click" /></td>
               </tr>
                <tr style="text-align:center"><td></td>
                   <td colspan="1">  
                       <br />
                       <br />
                    </td>
               </tr>
           </table>    
      
       <br /><br /><br /><br /><br />
           <hr />
           <strong><span class="auto-style47">Reply From Secretary / Chairman
           <br />
           </span>
           <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" Width="884px">
               <Columns>
                   <asp:CommandField ShowSelectButton="True" />
                   <asp:BoundField DataField="Complaint_No" HeaderText="Complaint_No" SortExpression="Complaint_No" />
                   <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
                   <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                   <asp:BoundField DataField="Reply_Sec" HeaderText="Reply" SortExpression="Reply_Sec" />
                  
               </Columns>
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
               <RowStyle BackColor="White" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [Complaint_No], [Subject], [Description], [Reply_Sec] FROM [Complaints] WHERE ([Flat_No] = @Flat_No) ORDER BY [Complaint_No]">
               <SelectParameters>
                   <asp:ControlParameter ControlID="TextBox3" Name="Flat_No" PropertyName="Text" Type="Int32" />
               </SelectParameters>
           </asp:SqlDataSource>
           </strong>
           
       
       </div>
     </asp:Panel>
     </center>
        
       
</asp:Content>

