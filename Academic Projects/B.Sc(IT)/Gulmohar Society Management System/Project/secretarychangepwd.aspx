<%@ Page Language="C#" AutoEventWireup="true" CodeFile="secretarychangepwd.aspx.cs" Inherits="secretarychangepwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Secretary</title>
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
        .auto-style43 {
            color: #CC0000;
        }
        .auto-style44 {
            color: #CC0000;
            font-size: xx-large;
        }
        .auto-style47 {
            font-size: xx-large;
        }
        .auto-style48 {
            color: #CCCC00;
            text-decoration: underline;
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
        .auto-style64 {
            color: #CC0000;
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style73 {
            background-color: #000000;
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
        .auto-style74 {
            text-decoration: none;
        }
        .auto-style75 {
            color: #FFFFFF;

        }
        .auto-style76 {
            color: #FFFFFF;
            font-size: small;
        }
         .style23
        {
            text-decoration: underline;
            color: #669900;
            text-align: center;
            font-family: "Arial Black";
        }
         .auto-style77 {
            font-size: xx-large;
            color: #6600FF;
            font-weight: bold;
        }
         .auto-style78 {
             color: #660066;
             font-size: xx-large;
         } .style23
        {
            text-decoration: underline;
            color: #669900;
            text-align: center;
            font-family: "Arial Black";
        }
        .auto-style77 {
            font-size: xx-large;
            color: #6600FF;
            font-weight: bold;
        }
        .auto-style78 {
            color: #660066;
            font-size: xx-large;
        }.auto-style36 {
            color: #FF0066;
            font-size: xx-large;
            font-family: "Arial Black";
            text-align: center;
            text-decoration: underline;
            background-color:#FF0066;
        }
        .auto-style7 {
            background-color: #9900CC;
            color: #00FFFF;
        }
        
    
        </style>
</head>
<body topmargin="0" leftmargin="0" rightmargin="0" style="background-color:cornsilk">     
          
       

       <form id="form2"  runat="server">
          
       

       <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%" BackColor="Teal" >
                    <strong><center>
                        <img alt="krishna bhagwan" src="images/images%20(2).jpg" class="auto-style35"   />    
                     </center></strong> 
                    <div class="auto-style39" style="font-family: 'arial black'">
                       <center>
                                  <asp:Panel ID="Panel3" runat="server" Height="05px" Width="734px" HorizontalAlign="Left">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/images (3).jpg" Height="61px" Width="59px" />
                            </asp:Panel>
                                                     
                            <span class="auto-style47"> </strong></span><em><span><span class="auto-style64"><strong>G</strong></span></span><span class="auto-style47"><span class="auto-style62"><strong>ulMo</strong></span></span><span><span class="auto-style64"><strong>h</strong></span></span><span class="auto-style47"><span class="auto-style62"><strong>ar</strong></span><span class="auto-style48"></span><span class="auto-style43"><strong>&nbsp; </strong></span></span><span><span class="auto-style64"><strong>S</strong></span></span><span class="auto-style47"><span class="auto-style62"><strong>ociEty</strong></span></span></em><span class="auto-style43"><span class="auto-style47"><strong><em> </em></strong></span></span><strong><em>
                            <br class="auto-style44" />
                            </em>
                            <asp:Label ID="Label3" runat="server" CssClass="auto-style42" Font-Bold="False" Font-Names="Arial Black" Font-Size="10pt" ForeColor="#336600" Height="17px" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 " Width="536px"></asp:Label>
                            </strong></em>
                            <br class="auto-style44" />
                            </em><marquee behavior="alternate">
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#CCCC00" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-East,Mumbai-400079 
" Width="100%"></asp:Label></marquee>
                            &nbsp;</center>
                    </div>   
                    </center>
              </asp:Panel>
            <center> <asp:Panel ID="Panel2" runat="server" BackColor="Lavender"  
           Height="110%" Width="100%" Font-Names="Arial Black">
    
   
    <strong> 
       
       <asp:Label ID="Label10" runat="server" BackColor="#9900CC" 
           CssClass="auto-style7" ForeColor="Wheat" Height="54px" 
           style="background-color: #FF0000; font-size: large;" 
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
           ForeColor="#9933FF" NavigateUrl="~/welcomesecretary.aspx">&lt;&lt; Go back To Secretary Welcome  Page</asp:HyperLink>
       </td></tr>
       </table>

    </asp:Panel>
       </center>
             <asp:Panel ID="Panel4" runat="server" Height="100px" Width="100%"  BackColor="Teal" CssClass="auto-style73">
      <p class="style19" >  <strong style="color: white" ><span class="style22">!!!&nbsp;&nbsp; 
          Thanks For Visiting Our Site&nbsp;&nbsp; !!!</span></strong><br />
               <br /> <strong><span style="color:white">Please Help us To Improve Our 
          co-op Housing Society By Giving Your Precious
          feedbacks.<br /> 
          
             <br />Copyright@SuryakantDubalgunde2016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website Designer:Suryakant Dubalgunde &amp; Maintained By:Suryakant Dubalgunde,Aakash Suryawanshi
          </strong>
         
              </asp:Panel>
  
       </form>
       
</body>
</html>

  
