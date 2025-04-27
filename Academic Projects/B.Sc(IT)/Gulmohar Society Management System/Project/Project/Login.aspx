<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            background-color: #9900CC;
            color: #00FFFF;
        }
        .auto-style42 {
            background-color: #FF6600;
        }
        .auto-style1 {
            width: 621px;
            height: 203px;
        }
        .style25
        {
            width: 72px;
        }
        </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
 
    <form runat="server">
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #FF0000; font-size: large;" Text="Login Page" Width="748px"></asp:Label>
           <br />
           </strong>
       </div>    
       <div class="auto-style89">
           <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
       </div>
       <asp:Image ID="Image1" runat="server" AlternateText="Use UserName &amp; Password To Unlock The Web-Application" BackColor="#FF99FF" BorderColor="#FFFFCC" BorderWidth="0px" ForeColor="#FFFFCC" Height="232px" ImageAlign="Left" ImageUrl="~/images/images (4).jpg" Width="385px" />
      <table cellspacing="0" cellpadding="0" class="auto-style1" align="left">
         <tr>
            <td align="left" class="style25"> 
                <br />
                <asp:Label ID="Label1" runat="server" Text="Role:" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" /> </td>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
               <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="220px">
                   <asp:ListItem Selected="True">Member</asp:ListItem>
                   <asp:ListItem>Admin</asp:ListItem>
                   <asp:ListItem>Secretary</asp:ListItem>
                </asp:DropDownList> </td>
        </tr>
        <tr>
            <td align="left" class="style25"> 
                <br />
                <asp:Label ID="Label2" runat="server" Text="Username:" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" /> </td>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server"  AutoCompleteType="Email" 
                    BackColor="White" Height="38px"  
                    Width="220px" /> </td>
        </tr>
    
        <tr>
            <td align="left" class="style25"> 
                <br />
                <asp:Label ID="Label3" runat="server" Text="Password:" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="15pt" ForeColor="#990099" /> </td>
            <td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" BackColor="White" 
                    Height="38px" Width="220px"  /> </td>
        </tr>
        
        <tr>
            <td colspan="2" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" Width="100px" 
                    BackColor="#99FFCC" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="15pt" ForeColor="Lime" Height="42px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#99FF99" Font-Bold="True" 
                    Font-Names="Arial Black" Font-Size="15pt" ForeColor="#FF6600" Height="42px" 
                   Text="Reset" Width="100px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 
            </td>
        </tr>
    
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="AdminForgotpwd.aspx" Font-Bold="True" ForeColor="Red">Forgot Password???</asp:HyperLink>
            </td>
        </tr>
    </table>
     
      

   
       </asp:Panel>
       </center>
        </form>
</asp:Content>
