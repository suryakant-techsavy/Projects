<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminForgotpwd.aspx.cs" Inherits="AdminForgotpwd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     
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
            color:#FF9900;
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
        .auto-style1 {
            width: 453px;
            height: 306px;
        }
         .style1
        {
            font-size: xx-large;
            font-family: "Arial Black";
            text-decoration: underline;
            color: #00FF00;
            text-align: center;
        }
        .style3
        {
            color: #9900CC;
            font-weight: bold;
        }
        .style4
        {
            color: #0000CC;
        }
        .style5
        {
            color: #009900;
            font-weight: bold;
        }
        .style6
        {
            font-weight: bold;
        }
        .style7
        {
            color: #009900;
        }
        .auto-style1 {
            width: 453px;
            height: 306px;
        }
        .auto-style36 {
            color: #FF0066;
            background-color: #00FF99;
        } .style1
        {
            font-size: xx-large;
            font-family: "Arial Black";
            text-decoration: underline;
            color: #00FF00;
            text-align: center;
        }
        .style3
        {
            color: #9900CC;
            font-weight: bold;
        }
        .style4
        {
            color: #0000CC;
        }
        .style5
        {
            color: #009900;
            font-weight: bold;
        }
        .style6
        {
            font-weight: bold;
        }
        .style7
        {
            color: #009900;
        }
        .auto-style1 {
            width: 453px;
            height: 306px;
             margin-top: 16px;
         }
         .auto-style36 {
             color: #FF0000;
             background-color: #66FFFF;
         }
         
    
        </style>
</head>
<body  style="background-color:cornsilk">     
          
       

       <form id="form2" runat="server" >
         <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%" BackColor="Black" >
                  
                    <div class="auto-style90">
                        <table align="right">
                            <tr>
                                <td class="auto-style84">DATE N TIME:-</td>
                                <td class="auto-style85">
                                   
                                     <strong><em>
                                     <asp:Label ID="Label3" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#FF9900" Width="100%"></asp:Label>
                                     </em></strong></td>
                            </tr>
                            <tr>
                                <td class="auto-style86"><span class="auto-style75">LIKE N FOLLOWS US:-</span></td>
                                <td class="auto-style87">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/follow us img/facebook.png" Width="20px" /><span class="auto-style91"><a href="www.facebook.com" style="text-decoration: none"><span class="auto-style73">FACEBOOK</span></a></span><br class="auto-style75" /> 
                                    <asp:Image ID="Image3" runat="server" ImageUrl="~/follow us img/gmail.jpg" Width="20px" /><span class="auto-style91"><a href="www.gmail.com" style="text-decoration: none" class="auto-style101"> <span class="auto-style73">GMAIL</span></a></span><br class="auto-style75" />
                                    <asp:Image ID="Image4" runat="server" ImageUrl="~/follow us img/twitter.jpg" Width="20px" /> <span class="auto-style91"><a href="www.twitter.com" style="text-decoration: none" class="auto-style102"><span class="auto-style73">TWITTER</span></a></span><br class="auto-style75" />
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/follow us img/wa.png" Width="20px"  /> <span class="auto-style91"><a href="www.whatsapp.com" style="text-decoration: none" class="auto-style103"><span class="auto-style73">WHATSAPP</span></a></span> </td>
                            </tr>
                        </table>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<img alt="krishna bhagwan" class="auto-style89" src="images/images%20(2).jpg"></img><br /> <span class="auto-style75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; || OM GANPATEY NAMH: ||</span></div>
                    
               
            
            
                    <div class="auto-style39" style="font-family: 'arial black'">
                        <table align="center">
                            <tr>
                                <td><asp:Image ID="Image6" runat="server" ImageUrl="~/srddrtfgvdrtfgh/sdfghj/mi.gif" Height="88px" Width="184px" /></td>
                                <td class="auto-style76">  <span class="auto-style81"></span><span class="auto-style64"><strong><em> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; G</em></strong></span><span class="auto-style47"><span class="auto-style62"><strong><em>ulMo</em></strong></span></span><span><span class="auto-style64"><strong><em>h</em></strong></span></span><span class="auto-style47"><span class="auto-style62"><strong><em>ar</em></strong></span><span class="auto-style48"></span> </span><span><span class="auto-style64"><strong><em>S</em></strong></span></span><span class="auto-style47"><span class="auto-style62"><strong><em>ociEty&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </em></strong></span></span><strong><br />
                                     <asp:Label ID="Label4" runat="server"  Font-Bold="False" Font-Names="Arial Black" Font-Size="10pt" ForeColor="#FF9900" Height="17px" Text="Reg.No:-MUM/WP/HSG/CT/11551/01-02/02 " Width="318px"></asp:Label>
                                    </strong><br class="auto-style44" />
                                 <strong><em>
                                 <asp:Label ID="Label7" runat="server" CssClass="auto-style76" Font-Bold="False" Font-Names="Arial Black" ForeColor="#FF9900" Text="Plot No:31/32,Powder Gali,S.V.Road, Goregaon-West,Mumbai-400079 
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
       

     
            <center> <asp:Panel ID="Panel2" runat="server" style="background-color:white" 
        Height="110%" Width="100%">
          <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#CCFF99" CssClass="auto-style7" ForeColor="Red" Height="54px" style="font-size: large;" Text="Forgot Password" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
       
       <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 <asp:Image ID="Image2" runat="server" 
        AlternateText="Use UserName &amp; Password To Unlock The Web-Application" 
        BackColor="#FF99FF" BorderColor="#FFFFCC" BorderWidth="0px" 
        ForeColor="#FFFFCC" Height="329px" ImageAlign="Left" 
        ImageUrl="~/images/images (15).jpg" Width="385px" /></p>
  

   
<table cellspacing="5px" cellpadding="5px" class="auto-style1">
        <tr>
            <td colspan="2" align="center" class="auto-style36"><h2>Forgot Password?<br /> &nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don't Worry 
                ...</h2></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label1" runat="server" Text="username" /> </td>
            <td> <asp:TextBox ID="TextBox1" runat="server"  AutoCompleteType="DisplayName" /> &nbsp;<asp:Button 
                    ID="Button3" runat="server" onclick="Button3_Click" Text="Get Question" 
                    Width="99px" />
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    
        <tr>
            <td> <asp:Label ID="Label2" runat="server" Text="Security Question" /> </td>
            <td> 
                <asp:TextBox ID="TextBox2" runat="server" Width="286px"  Enabled="False" BackColor="#D2DAC0" 
                    ReadOnly="True" /> </td>
        </tr>
        
        <tr>
            <td> <asp:Label ID="Label5" runat="server" Text="Answer"  /> </td>
            <td> <asp:TextBox ID="TextBox3" AutoCompleteType="Disabled" runat="server" 
                  /> 
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td> <asp:Label ID="Label6" runat="server" Text="Your Password" /> </td>
            <td> <asp:TextBox ID="TextBox4" runat="server"  Enabled="False" ReadOnly="True" 
                    BackColor="#D2DAC0" /> </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Find Password" Width="103px" 
                     style="height: 26px" onclick="Button1_Click" />&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="60px" OnClick="Button2_Click" /> 
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Names="Arial Black" ForeColor="Blue" NavigateUrl="~/AdminLogin.aspx">&lt;&lt;&lt;Go To Login Page</asp:HyperLink>
            </td>
        </tr>
    
        
    </table>
        </asp:Panel>
         </center>
            <asp:Panel ID="Panel4" runat="server" Height="100px" Width="100%"  BackColor="black" CssClass="auto-style73">
      <p class="style19" >  <strong style="color: white" ><span class="style22">!!!&nbsp;&nbsp; 
          Thanks For Visiting Our Site&nbsp;&nbsp; !!!</span></strong><br />
               <span style="color:white"><strong>
          <br />
          <br />
          Copyright@SuryakantDubalgunde2016&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Website Designed &amp; Maintained By:Suryakant Dubalgunde,Aakash Suryawanshi </strong></span></asp:Panel>
  
       </form>
       
</body>
</html>

