<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="Bye.aspx.cs" Inherits="Bye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style77 {
            color: #FF9900;
        }
        .auto-style78 {
            text-align: right;
            width: 464px;
        }
        .auto-style79 {
            width: 464px;
        }   .style23
        {
            color: #996633;
            font-size: xx-large;
            font-family: "Arial Black";
            text-align: center;
            text-decoration: underline;
            background-color: #99FF33;
        }
        .auto-style80 {
            color: #FF9900;
            float: left;
        }
        .auto-style82 {
            width: 448px;
        }
  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form>
          <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#CCFF66" CssClass="auto-style7" ForeColor="Red" Height="54px" style=" font-size: large;" Text="Bye-Laws" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br /><br />
    
<div><center>
    <table align="center" cellpadding="0" cellspacing="0">
<tr>
<td  align="center" class="auto-style82"  >
    <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/images12365478.png" OnClick="ImageButton1_Click" Width="100px" />&nbsp;</td>
<td align="center"  >
    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="100px" ImageUrl="~/pdf.jpg" OnClick="ImageButton2_Click" Width="100px" />
    </td>
</tr>
<tr>
<td align="center" style="text-align:center" class="auto-style82">
    <asp:Label ID="Label1" runat="server" Text="Click the Image To Download The Bye-Laws In Word Format" CssClass="auto-style80" ForeColor="#CC3300" Width="430px"></asp:Label></td>
<td><asp:Label ID="Label2" runat="server" Text="Click the Image To Download The Bye-Laws In PDF Format" ForeColor="#CC3300"></asp:Label></td>
</tr>
<tr>
<td class="auto-style82">&nbsp;</td>
<td class="auto-style79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
</tr>
</table></center>

</div></asp:Panel>
       </center>

    </form>
 
      

    
</asp:Content>

