<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="SecretaryForgotpwd.aspx.cs" Inherits="SecretaryForgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css"> 
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
             margin-top: 16px;
         }
         .auto-style36 {
             color: #FF0000;
             background-color: #66FFFF;
         }
         .auto-style42 {
            background-color: #FF6600;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body><br />
    <form runat="server">
   <center> <asp:Panel ID="Panel1" runat="server" style="background-color:Lavender" 
        Height="500px" Width="100%"> <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #FF0000; font-size: large;" Text="Forgot Password" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
       </strong>
      
  
  
          <asp:Image ID="Image1" runat="server" 
        AlternateText="Use UserName &amp; Password To Unlock The Web-Application" 
        BackColor="#FF99FF" BorderColor="#FFFFCC" BorderWidth="0px" 
        ForeColor="#FFFFCC" Height="340px" ImageAlign="Left" 
        ImageUrl="~/images/images (3).jpg" Width="385px" />
       <table cellspacing="5px" cellpadding="5px" class="auto-style1">
        <tr>
            <td colspan="2" align="center" class="auto-style36"><h2>Forgot Password?<br /> &nbsp;&nbsp;&nbsp;&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Don't Worry 
                ...</h2></td>
        </tr>
        <tr>
            <td> <asp:Label ID="Label2" runat="server" Text="Email" /> </td>
            <td> <asp:TextBox ID="TextBox1" runat="server"  AutoCompleteType="Email" /> &nbsp;<asp:Button 
                    ID="Button3" runat="server" onclick="Button3_Click" Text="Get Question" 
                    Width="99px" />
            </td>
        </tr>
    
        <tr>
            <td> <asp:Label ID="Label3" runat="server" Text="Security Question" /> </td>
            <td> 
                <asp:TextBox ID="TextBox2" runat="server" Width="286px"  Enabled="False" BackColor="#D2DAC0" 
                    ReadOnly="True" /> </td>
        </tr>
        
        <tr>
            <td> <asp:Label ID="Label4" runat="server" Text="Answer" /> </td>
            <td> <asp:TextBox ID="TextBox3" AutoCompleteType="Disabled" runat="server" 
                    /> </td>
        </tr>
        
        <tr>
            <td> <asp:Label ID="Label5" runat="server" Text="Your Password" /> </td>
            <td> <asp:TextBox ID="TextBox4" runat="server"  Enabled="False" ReadOnly="True" 
                    BackColor="#D2DAC0" /> </td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Find Password" Width="103px" 
                     style="height: 26px" onclick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Width="60px" OnClick="Button2_Click" /> 
                <br /><br /> <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SecretaryLogin.aspx" ForeColor="#0033CC" Font-Bold="True" Font-Names="Arial Black">&lt;&lt;&lt;Go to Login Page</asp:HyperLink>

            </td>
                    </tr>
          
    
        
    </table>


        </asp:Panel>
       </center>
        </form>
        </body>
</asp:Content>

