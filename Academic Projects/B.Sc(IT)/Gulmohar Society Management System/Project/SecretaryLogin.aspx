<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="SecretaryLogin.aspx.cs" Inherits="SecretaryLogin"  EnableEventValidation="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .auto-style1 {
            width: 605px;
        }
          .auto-style2 {
              height: 69px;
             
          }
          .auto-style3 {
               width: 53px;
          }
         .auto-style7 {
            background-color: #0000FF;
              color: #FFCCCC;
          }
        .auto-style42 {
            background-color: #FF6600;
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <body><br />
    <form runat="server">
 
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="Lavender" Height="350px" Width="100%">
        <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #FF0000; font-size: large;" Text="Admin Login Page" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
   
     
    <asp:Image ID="Image1" runat="server" 
        AlternateText="Use UserName &amp; Password To Unlock The Web-Application" 
        BackColor="#FF99FF" BorderColor="#FFFFCC" BorderWidth="0px" 
        ForeColor="#FFFFCC" Height="247px" ImageAlign="Left" 
        ImageUrl="~/images/images (15).jpg" Width="385px" />
                    


<table cellspacing="5px" cellpadding="5px" class="auto-style1">
        <tr>
            <td align="right" class="auto-style3"> <asp:Label ID="Label2" runat="server" Text="Email" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" /> </td>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"  AutoCompleteType="Email" BackColor="#FF99CC" Height="38px" OnTextChanged="TextBox1_TextChanged" Width="220px" /> </td>
        </tr>
    
        <tr>
            <td align="right" class="auto-style3"> <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" /> </td>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="#FF99CC" Height="38px" Width="220px"  /> </td>
        </tr>
        
        <tr>
            <td colspan="2" align="center" class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" onclick="Button1_Click" BackColor="#66FFFF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Lime" Height="50px" />&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#66FFFF" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#FF6600" Height="50px" OnClick="Button3_Click1" Text="Reset" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="Red" NavigateUrl="~/SecretaryForgotpwd.aspx">Forgot Password???</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Panel>
       </center>
        </form>
        </body>
</asp:Content>

