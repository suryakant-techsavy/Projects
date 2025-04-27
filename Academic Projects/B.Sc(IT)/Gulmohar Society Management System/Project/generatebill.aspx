<%@ Page Title="" Language="C#" MasterPageFile="~/secretarypage.master" AutoEventWireup="true" CodeFile="generatebill.aspx.cs" Inherits="generatebill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style101 {
            text-align: right;
        }
        .auto-style102 {
            font-weight: bold;
        }
        .auto-style104 {
            color: #FF0000;
        }
        .auto-style105 {
            height: 26px;
        }
        .auto-style106 {
            text-align: left;
        }
        .auto-style107 {
            width: 640px;
        }
        .auto-style121 {
            font-size: large;
            text-align: center;
         
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   
    
   <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%" >
    <div class="auto-style76" >
           <strong>
           <asp:Label ID="Label6" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Bill Corner" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
           <hr />
       </div>
   
       <center>  <div>
             <strong>
             <asp:Label ID="Label22" runat="server" Text="Gulmohar Co-Operative Housing Society Limited"></asp:Label>
             <br />
             <asp:Label ID="Label21" runat="server" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 "></asp:Label>
             <br />
             <asp:Label ID="Label24" runat="server" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-West,Mumbai-400079"></asp:Label>
             <br />
             <asp:Label ID="Label23" runat="server" Text="Contact No:-9004287740/022-222653 "></asp:Label>
             <br />
             </strong>
       </div></center>
<hr />
      <div class="auto-style101">
           <strong>
           <asp:Label ID="Label19" runat="server" Text="Date:-"></asp:Label>
           </strong>
       <asp:TextBox ID="TextBox13" runat="server" ReadOnly="True" Style="text-align:center" Width="200px" BackColor="#D2DAC0"></asp:TextBox>

             </div>
      <br />
    
       
    
  <div class="auto-style106"><asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Bill No:-"></asp:Label>
      <asp:TextBox ID="TextBox2" runat="server" BackColor="#D2DAC0" ForeColor="Blue" ReadOnly="True" Style="text-align:center" Width="200px">
      </asp:TextBox></div>
    
        
            <div>
                <div class="auto-style76">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="Flat No:-"></asp:Label>
                    <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Flat_No" DataValueField="Flat_No" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" Width="200px">
                    </asp:DropDownList>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [Flat_No] FROM [Login_Info] ORDER BY [Flat_No]"></asp:SqlDataSource>
                <div class="auto-style76">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;<asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" Text="Owner Name:-"></asp:Label>
                    <asp:TextBox ID="TextBox10" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center" Width="250px"></asp:TextBox>
                    &nbsp;<br />
                    <br />
                    <strong>&nbsp;&nbsp;
                    <asp:Label ID="Label20" runat="server" Text="Payment Status:-"></asp:Label>
                    <asp:TextBox ID="TextBox14" runat="server" BackColor="#D2DAC0" CssClass="auto-style102" ReadOnly="True" style="text-align:center" Width="200px">Unpaid</asp:TextBox>
                    <br />
                    <br />
                    </strong>
                </div>
            </div>
        </center>
        <hr class="auto-style107" />
        <br />
        <center class="auto-style101">
            <table align="center" style="text-align:center">
                <tr>
                    <td>
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
                    <td>1
                        <td>
                            <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" Text="Water Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">150</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>2
                        <td>
                            <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" Text="Sinking Fund"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">100</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>3
                        <td>
                            <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Maintainance Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">200</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>4
                        <td>
                            <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="Parking Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Style="text-align:center">00</asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox5" CssClass="auto-style104" Display="Dynamic" ErrorMessage="Please Insert Amount in Numbers" ValidationExpression="^[0-9]\d*$"></asp:RegularExpressionValidator>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>5
                        <td>
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" Text="Building Insurance Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">150</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>6
                        <td>
                            <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="Lift Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">100</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>7
                        <td>
                            <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" Text="Audit Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" BackColor="#D2DAC0" ReadOnly="True" Style="text-align:center">150</asp:TextBox>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>8
                        <td>
                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Miscelleneous Charges"></asp:Label>
                            <td>
                                <asp:TextBox ID="TextBox12" runat="server" Style="text-align:center">00</asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox12" CssClass="auto-style104" Display="Dynamic" ErrorMessage="Please Insert Amount in Numbers" ValidationExpression="^[0-9]\d*$"></asp:RegularExpressionValidator>
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>9
                        <hr />
                        <hr />
                        <td>
                            <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Balance+Interest"></asp:Label>
                            <hr />
                            <hr />
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Style="text-align:center">00</asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox9" CssClass="auto-style104" Display="Dynamic" ErrorMessage="Please Insert Amount in Numbers" ValidationExpression="^[0-9]\d*$"></asp:RegularExpressionValidator>
                                <hr />
                                <hr />
                            </td>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" Height="27px" OnClick="Button2_Click" Text="Total" />
                        <br />
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" BackColor="#D2DAC0" Style="text-align:center" Width="91px"></asp:TextBox>
                        </td>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style106" colspan="3">&nbsp;<hr />
                        <hr />
                    </td>
                </tr>
            </table>
        </center>
        <div class="auto-style76">
            <hr />
            Note:You Have to pay the bill amount within the 1 Month of receiving.
            <br />
            If you don&#39;t then you have to pay interest for the same in next bill .so kindly pay the bill within 1 Month of receiving of bill. 
        </div>
        <div class="auto-style101">
            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name" Width="200px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [name] FROM [Login_Info] WHERE ([Role] = @Role)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Secretary" Name="Role" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="Label25" runat="server" style="text-align:center" Text=" Authority Signature" Width="200px"></asp:Label>
        </div>
        <hr /><center>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Font-Strikeout="False" OnClick="Button1_Click" Text="Generate Bill" />
       
            </center>     
      
     </asp:Panel>
     
</asp:Content>
