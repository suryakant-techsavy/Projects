<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 621px;
            height: 203px;
        }
       
        .style25
        {
            width: 72px;
        }
        .style26
        {
            width: 72px;
            font-family: Arial;
            color: #CC9900;
            height: 53px;
        }
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form >  
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="400px" Width="100%"> <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#CCFF66" CssClass="auto-style7" ForeColor="Red" Height="54px" style=" font-size: large;" Text="Login Page" Width="748px"></asp:Label>
           <br />
           <br />
           <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
           </strong>
       </div>
   
       <br />    <br />
     
    <asp:Image ID="Image2" runat="server" 
        AlternateText="Use UserName &amp; Password To Unlock The Web-Application" 
        BackColor="#FF99FF" BorderColor="#FFFFCC" BorderWidth="0px" 
        ForeColor="#FFFFCC" Height="232px" ImageAlign="Left" 
        ImageUrl="~/images/images4.jpg" Width="385px" />
                     


   
             
           <table align="right" cellpadding="0" cellspacing="0" class="auto-style1">
               <tr>
                   <td align="left" class="style25">
                       <br />
                       <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" Text="Role:" />
                       &nbsp;&nbsp; </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="220px">
                           <asp:ListItem Selected="True">Member</asp:ListItem>
                           <asp:ListItem>Admin</asp:ListItem>
                           <asp:ListItem>Secretary</asp:ListItem>
                       </asp:DropDownList>
                   </td>
               </tr>
               <tr>
                   <td align="left" class="style25">
                       <br />
                       <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" Text="Username:" />
                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="Email" BackColor="White" Height="38px" Width="220px" />
                   </td>
               </tr>
               <tr>
                   <td align="left" class="style25">
                       <br />
                       <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" Text="Password:" />
                   </td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:TextBox ID="TextBox2" runat="server" BackColor="White" Height="38px" TextMode="Password" Width="220px" />
                   </td>
               </tr>
               <tr>
                   <td class="style26">&nbsp;</td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                       <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="Red" NavigateUrl="AdminForgotpwd.aspx">Forgot Password???</asp:HyperLink>
                   </td>
               </tr>
               <tr>
                   <td align="center" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:Button ID="Button1" runat="server" BackColor="#99FFCC" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="Lime" Height="42px" OnClick="Button1_Click" Text="Login" Width="100px" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                       <asp:Button ID="Button3" runat="server" BackColor="#99FF99" Font-Bold="True" Font-Names="Arial Black" Font-Size="15pt" ForeColor="#FF6600" Height="42px" OnClick="Button3_Click" Text="Reset" Width="100px" />
                       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
               </tr>
           </table>
       </asp:Panel>
       </center>
      </form>
  
</asp:Content>

