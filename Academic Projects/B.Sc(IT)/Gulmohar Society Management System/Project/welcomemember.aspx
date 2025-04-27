<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.master" AutoEventWireup="true" CodeFile="welcomemember.aspx.cs" Inherits="welcomemember" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  <style type="text/css">
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
        }
    
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center> <asp:Panel ID="Panel2" runat="server" BackColor="Lavender"  Height="250px" Width="100%">
       <span class="auto-style77">Welcome Mr./Ms. </span>
       <asp:Label ID="Label6" runat="server"  Font-Bold="true" Text="*" CssClass="auto-style77"></asp:Label>
       &nbsp;<span class="auto-style78"><strong>To our Gulmohar Society.this is member page</strong></span></asp:Panel>
       </center>
</asp:Content>

