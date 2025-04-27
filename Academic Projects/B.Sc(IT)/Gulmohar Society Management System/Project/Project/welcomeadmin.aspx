<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="welcomeadmin.aspx.cs" Inherits="welcomeadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style23
        {
            text-decoration: underline;
            color: #669900;
            text-align: center;
            font-family: "Arial Black";
        }
         .auto-style66 {
             background-color: #FF00FF;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <body bgcolor="khaki"><br />
    
 
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="Lavender"  Height="250px" Width="100%">
    
    <div style="height: 100px;
                font-size: xx-large;
            font-family: Arial Black;
            text-decoration: underline;
            color: coral;
            text-align: center;" class="auto-style66"
        
        >

        <asp:Label ID="Label1" runat="server" BackColor="#9900cc" CssClass="auto-style7" ForeColor="Wheat" Height="54px" Text="Admin Page" ToolTip="Use Your UserName &amp; Password ,To Access The Contents" Width="700px" style="background-color: #00CC66"></asp:Label>
        <br /><br />

       </asp:Panel>
       </center>
        </body>

</asp:Content>

