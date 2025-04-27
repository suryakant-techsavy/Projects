<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script type="text/javascript">
	        function print_page() {
	            window.print();
	        }
	    </script>
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
            color: #FFFFFF;

        }
        .auto-style76 {
            text-align: center;
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
        .menu_hover:hover
			{
				color:grey;
				-webkit-transition:color 1s;
				transition:color 1s;
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
            color: #FFFFFF;

        }
           .auto-style103 {
               color: #0033CC;
               text-decoration: underline;
               font-size: xx-large;
               background-color: #FFFFFF;
           }
        </style>
</head>
   <body>
<form runat="server">
    <asp:Button Text="Generate Invoice" OnClick="GenerateInvoicePDF" runat="server" />
 

	
	    </form>
	</body>
	</html>