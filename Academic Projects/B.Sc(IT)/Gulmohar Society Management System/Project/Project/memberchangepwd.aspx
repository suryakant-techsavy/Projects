<%@ Page Language="C#" AutoEventWireup="true" CodeFile="memberchangepwd.aspx.cs" Inherits="memberchangepwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Member</title>
     <style type="text/css">
        .style10
        {
            text-decoration: underline;
            color: #00FF00;
            background-color:black;
        }
        .style19
        {
            text-align: center;
            font-size: large;
            color: #006699;
        }
        .style22
        {
            font-family: Arial;
        }
        .auto-style35 {
            height: 51px;
            width: 43px;
        }
        .auto-style42 {
            color: #CC00CC;
            font-size: x-small;
        }
        .auto-style44 {
            color: #CC0000;
            font-size: xx-large;
        }
        .auto-style47 {
            font-size: xx-large;
        }
        .menu_hover:hover
			{
				color:grey;
				-webkit-transition:color 1s;
				transition:color 1s;
			}
        .auto-style62 {
            color: #CC0000;
            text-decoration: underline;
        }
        .style23
        {
            background-color: #CC6699;
            color: #000000;
        }
        .style24
        {
            font-family: Arial;
            color: #000000;
        }
         .style23
        {
            text-decoration: underline;
            color: #669900;
            text-align: center;
            font-family: "Arial Black";
        }
         .style23
        {
            text-decoration: underline;
            color: #669900;
            text-align: center;
            font-family: "Arial Black";
        }
        .auto-style7 {
            background-color: #9900CC;
            color: #00FFFF;
        }
        
    
         .auto-style74 {
             color: #FF9900;
         }
         .auto-style75 {
             color: #FF9900;
             font-size: xx-large;
             text-decoration: underline;
         }
         .auto-style76 {
             text-decoration: underline;
         }
         .auto-style77 {
             color: #FF9900;
             text-decoration: underline;
         }
         .auto-style78 {
             font-size: xx-large;
             text-decoration: underline;
         }
         .auto-style79 {
             text-align: center;
         }
         .auto-style80 {
             color: #FFFFFF;
         }
        
    
        </style>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" style="background-color:cornsilk">     
          
       

       <form id="form2" runat="server" >
          
       

       <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%"  BackColor="black">
                    <strong><center>
                        <img alt="krishna bhagwan" src="images/images%20(2).jpg" class="auto-style35"   />    
                        <span class="auto-style80"></span>
                        <br class="auto-style80" />
                        <span class="auto-style80">|| OM GANPATEY NAMH: ||</span></center></strong> 
                  <div class="auto-style39" style="font-family: 'arial black'">
                        <table class="auto-style120" align="center" >
                            <tr>
                                <td><asp:Image ID="Image6" runat="server" ImageUrl="~/srddrtfgvdrtfgh/sdfghj/mi.gif" Height="88px" Width="214px" /></td>
                                <td class="auto-style79">  <span class="auto-style81"></span><span><strong><span class="auto-style74"><em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></span><em><span class="auto-style74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style78">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G</span></span></em></strong></span><span class="auto-style47"><strong><em><span class="auto-style77">ulMo</span></em></strong></span><span><span class="auto-style75"><strong><em>h</em></strong></span></span><span class="auto-style47"><span class="auto-style118"><span class="auto-style74"><span class="auto-style76"><strong><em>ar</em></strong> </span></span> </span> </span><span><span class="auto-style75"><strong><em>S</em></strong></span></span><span class="auto-style47"><strong><em><span class="auto-style124"><span class="auto-style74"><span class="auto-style76">ociEty&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="auto-style62"> </span></em></strong></span><strong><br />
                                     <asp:Label ID="Label3" runat="server" CssClass="auto-style42" Font-Bold="False" Font-Names="Arial Black" Font-Size="10pt" ForeColor="#FF9900" Height="17px" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 " Width="318px"></asp:Label>
                                    </strong><br class="auto-style44" />
                                 <strong><em>
                                 <asp:Label ID="Label4" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#FF9900" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-West,Mumbai-400079 
" Width="75%"></asp:Label>
                                 </em></strong></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="auto-style117">&nbsp;
             </td>
                            </tr>
                        </table>
                           
                   </div>  </center>
              </asp:Panel>
            <center> <asp:Panel ID="Panel2" runat="server" BackColor="Lavender"  
           Height="110%" Width="100%" Font-Names="Arial Black">
    
   
    <strong> 
       
       <asp:Label ID="Label10" runat="server" BackColor="#CCFF99" 
           CssClass="auto-style7" ForeColor="Red" Height="54px" 
           style="font-size: large;" 
           Text="Change Password Page" Width="748px"></asp:Label>
       
 </strong><br />
       <table cellpadding="0" cellpadding="0">    
       <tr>
       <td></td>
       <td></td>
       <td align="right"> <asp:Label ID="Label5" runat="server" ForeColor="#FF0066" Text="*"></asp:Label>
      </td>
      </tr>
  <tr>
  <td></td>
  <td> 
      <asp:Label ID="Label11" runat="server" Text="*"></asp:Label>
      </td>
  </tr>
  <tr>
  <td> Enter Old Password:-
  </td>
  <td><asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
      </td>
      <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
           ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" 
              Display="Dynamic">Enter your old Password</asp:RequiredFieldValidator>
      
  </td>
  </tr>
       <tr>
       <td>  Enter New Password:-
       </td>
       <td> <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
      </td> 
      <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
           ControlToValidate="TextBox2" Display="Dynamic">Enter your new Password</asp:RequiredFieldValidator>
      </td>
  
       </tr>
       <tr>
       <td> Re-enter Password:-
       </td>
       <td> <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
      
       </td>
       <td>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
           ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator" 
               Display="Dynamic">Re-type new password</asp:RequiredFieldValidator>
       <asp:CompareValidator ID="CompareValidator1" runat="server" 
           ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
           ErrorMessage="CompareValidator" Display="Dynamic">Both new password should be same </asp:CompareValidator>
     </td>
       </tr>
      <tr>
      <td>
      </td>
      <td> <asp:Button ID="Button1" runat="server" BackColor="#66FFCC" 
           onclick="Button1_Click" Text="Submit" Width="150px" />
      
      </td>
      </tr>
     <tr>
     <td></td>
     <td></td>
     <td><asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
           ForeColor="#9933FF" NavigateUrl="~/welcomemember.aspx">&lt;&lt;Go Back To Member Welcome Page</asp:HyperLink>
       </td></tr>
       </table>

    </asp:Panel>
       </center>
                  
               <asp:Panel ID="Panel3" runat="server" Height="70px" Width="100%"  BackColor="black" >
      <center>  <strong style="color: white" >!!!&nbsp;&nbsp; 
          Thanks For Visiting Our Site&nbsp;&nbsp; !!!</strong></center><br />
              <span class="auto-style80" >Copyright@SuryakantDubalgunde2016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website Designed &amp; Maintained By:Suryakant Dubalgunde,Aakash Suryawanshi </span>
     
         
              </asp:Panel>
  
  
       </form>
       
</body>
</html>

  
