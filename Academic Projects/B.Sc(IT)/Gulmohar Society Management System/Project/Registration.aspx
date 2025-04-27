<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"  EnableEventValidation="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <body>
        <form runat="server">
   <center> <asp:Panel ID="Panel1" runat="server" style="background-color:lavender" 
        Height="200px" Width="100%" BackColor="#FFFF66" ForeColor="#333300">
        <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #FF0000; font-size: large;" Text="Registration" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br />
   
    
 

   
       <br />
   
     <asp:Button runat="server" Text="Member Registration Form" BackColor="Aqua" Font-Bold="True" Font-Names="Arial Black" Font-Size="Large" ForeColor="#333300" OnClick="Unnamed2_Click" />
       </asp:Panel>
       </center>
            </form>
       </body>
</asp:Content>