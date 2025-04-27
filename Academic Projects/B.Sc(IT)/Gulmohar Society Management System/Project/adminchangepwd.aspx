<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminchangepwd.aspx.cs" Inherits="adminchangepwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Admin</title>
     <meta content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
   
     <!-- Bootstrap Core CSS -->
    <link href="bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="stylish-portfolio.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css"/>

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
        .auto-style42 {
            color: #009933;
            font-size: x-small;
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
				color:yellow;
				-webkit-transition:color 1s;
				transition:color 1s;
                
			}
        .auto-style62 {
            color: #FF9900;
            text-decoration: underline;
        }
        .auto-style64 {
            color: #FF9900;
            text-decoration: underline;
            font-size: xx-large;
        }
        .auto-style73 {
            background-color:black;
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
        .auto-style75 {
            color:white;

        }
        .auto-style76 {
            text-align: center;
        }
        .auto-style81 {
            color: #FF9900;
            font-size: xx-large;
        }
        .auto-style84 {
            color: #FFFFFF;
            height: 23px;
            text-align: right;
        }
        .auto-style85 {
            height: 23px;
        }
        .auto-style86 {
            text-align: right;
        }
        .auto-style87 {
            text-align: left;
        }
        .auto-style89 {
            height: 50px;
        }
        .auto-style90 {
            text-align: center;
            height: 110%;
            width:100%;
        }
        .auto-style91 {
            color: fuchsia;
        }
        .auto-style101 {
            color: #FF0066;
        }
        .auto-style102 {
            color: #00FFFF;
        }
        .auto-style103 {
            color: #66FF33;
        }
                
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
        .auto-style48 {
            color: #FF9900;
            text-decoration: underline;
        }
        .menu_hover:hover
			{
				color:grey;
				-webkit-transition:color 1s;
				transition:color 1s;
			}
        .auto-style62 {
            color: #FF9900;           
            text-decoration: underline;
        }
        .auto-style64 {
            color: #FF9900;
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
        
    
        </style>
</head>
    
<body  style="background-color:cornsilk">     
          
       

       <form id="frm1" runat="server">
       
       <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%" BackColor="Black" >
                  
                    <div class="auto-style90">
                        <table align="right">
                            <tr>
                                <td class="auto-style84">DATE N TIME:-</td>
                                <td class="auto-style85">
                                   
                                     <strong><em>
                                     <asp:Label ID="Label6" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#FF9900" Width="100%"></asp:Label>
                                     </em></strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style86"><span class="auto-style75">LIKE N FOLLOWS US:-</span></td>
                                <td class="auto-style87">
                                    <asp:Image ID="Image2" runat="server" ImageUrl="~/follow us img/facebook.png" Width="20px" /><span class="auto-style91"><a href="www.facebook.com" style="text-decoration: none"><span class="auto-style73">FACEBOOK</span></a></span><br class="auto-style75" /> 
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/follow us img/gmail.jpg" Width="20px" /><span class="auto-style91"><a href="www.gmail.com" style="text-decoration: none" class="auto-style101"> <span class="auto-style73">GMAIL</span></a></span><br class="auto-style75" />
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/follow us img/twitter.jpg" Width="20px" Height="30px" /> <span class="auto-style91"><a href="www.twitter.com" style="text-decoration: none" class="auto-style102"><span class="auto-style73">TWITTER</span></a></span><br class="auto-style75" />
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/follow us img/wa.png" Width="20px"  /> <span class="auto-style91"><a href="www.whatsapp.com" style="text-decoration: none" class="auto-style103"><span class="auto-style73">WHATSAPP</span></a></span> </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img alt="krishna bhagwan" class="auto-style89" src="images/images%20(2).jpg"></img><br /> <span class="auto-style75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; || OM GANPATEY NAMH: ||</span></div>
                    
               
            
            
                    <div class="auto-style39" style="font-family: 'arial black'">
                        <table align="center">
                            <tr>
                                <td><asp:Image ID="Image6" runat="server" ImageUrl="~/srddrtfgvdrtfgh/sdfghj/mi.gif" Height="88px" Width="184px" /></td>
                                <td class="auto-style76">  <span class="auto-style81"></span><span><span class="auto-style64"><strong><em> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G</em></strong></span></span><span class="auto-style47"><span class="auto-style62"><strong><em>ulMo</em></strong></span></span><span><span class="auto-style64"><strong><em>h</em></strong></span></span><span class="auto-style47"><span class="auto-style62"><strong><em>ar</em></strong></span><span class="auto-style48"></span> </span><span><span class="auto-style64"><strong><em>S</em></strong></span></span><span class="auto-style47"><span class="auto-style62"><strong><em>ociEty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></strong></span></span><strong><br />
                                     <asp:Label ID="Label2" runat="server" CssClass="auto-style42" Font-Bold="False" Font-Names="Arial Black" Font-Size="10pt" ForeColor="#FF9900" Height="17px" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 " Width="318px"></asp:Label>
                                    </strong><br class="auto-style44" />
                                 <strong><em>
                                 <asp:Label ID="Label1" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#FF9900" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-West,Mumbai-400079 
" Width="100%"></asp:Label>
                                 </em></strong></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="auto-style76">&nbsp;
             </td>
                            </tr>
                        </table>
                                 
            </div>
            
                   
            
                    
            
            
                           
               
            
            
        </asp:Panel>
       

              
            <center> <asp:Panel ID="Panel2" runat="server" BackColor="white"  
           Height="110%" Width="100%" Font-Names="Arial Black">
    
   
    <strong> 
       
       <asp:Label ID="Label10" runat="server" BackColor="#99FF66" 
           CssClass="auto-style7" ForeColor="Red" Height="54px" 
           style=" font-size: large;" 
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
     <td><asp:HyperLink ID="HyperLink1" NavigateUrl="~/welcomeadmin.aspx" runat="server" Font-Bold="True" 
           ForeColor="#9933FF">&lt;&lt; Go back To Admin  Welcome Page</asp:HyperLink>
       </td></tr>
       </table>

    </asp:Panel>
       </center>
                <asp:Panel ID="Panel3" runat="server" Height="70px" Width="100%"  BackColor="black" >
      <center>  <strong style="color: white" >!!!&nbsp;&nbsp; 
          Thanks For Visiting Our Site&nbsp;&nbsp; !!!</strong></center><br class="auto-style75" />
              <span class="auto-style75">Copyright@SuryakantDubalgunde2016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website Designed &amp; Maintained By:Suryakant Dubalgunde,Aakash Suryawanshi </span>
     
         
              </asp:Panel>

       </form>
       
</body>
</html>

  
