<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
   <link href="Slidy.css" runat="server" type="text/css" rel="Stylesheet" />
     <style type="text/css">
        .style23
        {
            color: #666633;
            font-size: large;
            font-family: "Arial Black";
        }
         .style24 {
             color: #0066FF;
             font-size: large;
              font-family: "Arial Black";
         }
        .style25
        {
            text-align: center;
            text-decoration: underline;
            font-size: xx-large;
            color: #996600;
            font-family: "Arial Black";
            background-color: #CCFF66;
        }
         iframe {
             border-radius: 8px;
             -moz-border-radius: 8px;
             -webkit-border-radius: 8px;
         }	
	
	.highlight img{
	filter:progid:DXImageTransform.Microsoft.Alpha(opacity=75);
	-moz-opacity: 0.75;
	opacity: 0.75;
	}
	
	.highlight:hover img{
	filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100);
	-moz-opacity: 1;
	opacity: 1;
	
	}
         .auto-style77 {
             color: #000000;
         }
	
	     .auto-style79 {
             width: 63%;
         }
	
	     .auto-style80 {
             background-color: #99CCFF;
             font-size: x-large;
         }
         .auto-style81 {
             background-color: #99CCFF;
             font-size: large;
         }
	
	     .auto-style82 {
             font-size: medium;
             background-color: #999999;
         }
  
</style>
  


   
       
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    
    <form id="form1">
    
        <div class="auto-style76">
      <br />
    <iframe src="slidy.html" height="400" class="auto-style79"></iframe>  
       
           
      <center >
          <br />
&nbsp;&nbsp;&nbsp; <strong>
       <asp:Label ID="Label1" runat="server" Text="GulMohar Co-op Housing Society" Width="74%" BorderColor="#999999" CssClass="auto-style80"></asp:Label>        
          </strong>&nbsp;        
    <br />
    <asp:Label ID="Label5" runat="server" Text="!!!Good Thought Of A Day!!!" Width="60%" BorderColor="#999999" ></asp:Label>
    <em>
    <asp:TextBox ID="TextBox3" runat="server" Height="86px" Width="60%"  style="text-align:center"  ReadOnly="True" BorderColor="#999999" CssClass="auto-style82"></asp:TextBox>
          </em>
    <br />

    <br />
       <br />
    

    <asp:TextBox ID="TextBox2" runat="server" Width="25%"  Height="50px" TextMode="MultiLine"></asp:TextBox>
          <br />
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="182px" />
    <br />
	    
</center>
         
        </div>
               
    </form>
        
    
</asp:Content>

