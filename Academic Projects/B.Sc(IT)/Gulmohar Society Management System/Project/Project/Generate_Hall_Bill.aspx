<%@ Page Title="" Language="C#" MasterPageFile="~/secretarypage.master" AutoEventWireup="true" CodeFile="Generate_Hall_Bill.aspx.cs" Inherits="Generate_Hall_Bill" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <script type="text/javascript">
	        function print_page() {
	            window.print();
	        }
	    </script>
     <style type="text/css">
        .auto-style102 {
            font-weight: bold;
        }
        .auto-style103 {
            font-size: large;
        }
        .auto-style106 {
            text-align: left;
        }
          
         .auto-style113 {
             text-align: right;
         }
        
       .auto-style127 {
        height: 30px;
    }
        
       .auto-style128 {
        width: 881px;
    }
        .auto-style104 {
            color: #FF0000;
        }
                
       </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
 
    
   <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="150%" Width="100%">
    <div class="auto-style76"  >
           <strong>
           <asp:Label ID="Label6" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Hall-Billing Corner" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
           <hr />
       </div>
     <center>
       <strong>
         <asp:Label ID="Label22" runat="server" CssClass="auto-style103" Text="Gulmohar Co-Operative Housing Society Limited"></asp:Label>
         </strong>  
         <br />
         <asp:Label ID="Label21" runat="server" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 "></asp:Label>
         <br />
         <asp:Label ID="Label24" runat="server" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-West,Mumbai-400079"></asp:Label>
         <br />
         <asp:Label ID="Label23" runat="server" Text="Contact No:-9004287740/022-222653 "></asp:Label>
         <br />

<hr />
     </center> <div class="auto-style113" >
           <strong>
          <center> <asp:Label ID="Label33" runat="server" CssClass="auto-style103" Text="Hall Booked Reference Date:-"></asp:Label>
           <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" Width="200px" DataSourceID="SqlDataSource1" DataTextField="Confirm_Date" DataValueField="Confirm_Date" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
           </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [Confirm_Date] FROM [Hall_Allocation] ORDER BY [Confirm_Date]"></asp:SqlDataSource>
              <asp:Label ID="Label34" runat="server"></asp:Label>
           </center>
           <asp:Label ID="Label19" runat="server" Text="Date:-"></asp:Label>
           </strong>
       <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True" Style="text-align:center" Width="200px" BackColor="#D2DAC0"></asp:TextBox>

             </div>
      <br />
    
       </center>
    
  <div class="auto-style106"><asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Bill No:-"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" BackColor="#D2DAC0" ForeColor="Blue" ReadOnly="True" Style="text-align:center" Width="200px">
      </asp:TextBox></div>
     <center>
         <center>
             <div>
                 <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="Flat No:-"></asp:Label>
                 <asp:TextBox ID="TextBox20" runat="server" BackColor="#D2DAC0" Width="201px"></asp:TextBox>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" Text="Owner Name:-"></asp:Label>
                 <asp:TextBox ID="TextBox10" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center" Width="250px"></asp:TextBox>
                 <br />
                 <strong>
                 <br />
                 <asp:Label ID="Label20" runat="server" Text="Payment Status:-">
      </asp:Label>
                 <asp:TextBox ID="TextBox17" runat="server" BackColor="#D2DAC0" ReadOnly="true" style="text-align:center" Text="UNPAID" Width="200px"></asp:TextBox>
                 <br />
                 </strong>
             </div>
         </center>
         <br />
         </strong>
         <hr class="auto-style107" />
         <br />
         <center>
             <table align="center" style="text-align:center" >
                 <tr>
                     <td class="auto-style109">
                         <asp:Label ID="Label1" runat="server" BorderColor="Black" Font-Bold="True" Font-Size="Larger" Text="Sr No." Width="205px"></asp:Label>
                         <hr />
                         <td>
                             <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Particulars" Width="206px"></asp:Label>
                             <hr />
                             <td>
                                 <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" Text="Amount" Width="202px"></asp:Label>
                                 <hr />
                             </td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style110">1
                         <td>
                             <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Hall Charges"></asp:Label>
                             <td>
                                 <asp:TextBox ID="TextBox3" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center"></asp:TextBox>
                                 <asp:Label ID="Label32" runat="server"></asp:Label>
                             </td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style114">2
                         <td class="auto-style115">
                             <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Miscelleneous Charges"></asp:Label>
                             <br />
                             Reason:<td>
                                 <asp:TextBox ID="TextBox19" runat="server" style="text-align:center"></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox19" CssClass="auto-style104" Display="Dynamic" ErrorMessage="Please Insert Amount in Numbers" ValidationExpression="^[0-9]\d*$"></asp:RegularExpressionValidator>
                                 <br />
                                 <asp:TextBox ID="TextBox21" runat="server" style="text-align: center"></asp:TextBox>
                             </td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style127">3<td class="auto-style127">
                         <asp:Label ID="Label31" runat="server" Font-Bold="True" Font-Size="Large" Text="Balance+Interest"></asp:Label>
                         <td class="auto-style127">
                             <asp:TextBox ID="TextBox18" runat="server" Style="text-align:center"></asp:TextBox>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox18" CssClass="auto-style104" Display="Dynamic" ErrorMessage="Please Insert Amount in Numbers" ValidationExpression="^[0-9]\d*$"></asp:RegularExpressionValidator>
                         </td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td>&nbsp;<td class="auto-style108">&nbsp;<td class="auto-style108">&nbsp;</td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style109">&nbsp;<td>&nbsp;<td>&nbsp;</td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style109">&nbsp;<td>&nbsp;<td>&nbsp;</td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style109">&nbsp;<td>&nbsp;<td>&nbsp;</td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <td>
                             <td></td>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style110">
                         <hr />
                         <hr />
                     </td>
                     <td class="auto-style110">
                         <hr />
                         <hr />
                     </td>
                     <td class="auto-style110">
                         <hr />
                         <hr />
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style110">
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="Total" />
                         <br />
                         <td>&nbsp;</td>
                         <td>
                             <asp:TextBox ID="TextBox1" runat="server" BackColor="#D2DAC0" Style="text-align:center" Width="128px"></asp:TextBox>
                         </td>
                     </td>
                 </tr>
                 <tr>
                     <td class="auto-style106" colspan="3">
                         <hr />
                         <hr />
                     </td>
                 </tr>
             </table>
         </center>
         <hr />
         <div class="auto-style76">
             Note:You Have to pay the bill amount within the 1 Month of receiving.<br />If you don&#39;t then you have to pay interest for the same in next bill .so kindly pay the bill within 1 Month of receiving of bill.
         </div>
         <div class="auto-style113">
             <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" Width="200px">
             </asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [name] FROM [Login_Info] WHERE ([Role] = @Role)">
                 <SelectParameters>
                     <asp:Parameter DefaultValue="Secretary" Name="Role" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
             <br />
             <asp:Label ID="Label25" runat="server" style="text-align:center" Text=" Authority Signature" Width="200px"></asp:Label>
         </div>
         <center>
             <div>
                 <hr />
                 <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" OnClick="Button1_Click1" Text="Generate Bill" />
             </div>
         </center>
       </center>
     </asp:Panel>
        </asp:Content>


