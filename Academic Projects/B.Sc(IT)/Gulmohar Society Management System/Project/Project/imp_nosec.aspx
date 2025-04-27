<%@ Page Title="" Language="C#" MasterPageFile="~/secretarypage.master" AutoEventWireup="true" CodeFile="imp_nosec.aspx.cs" Inherits="imp_nosec" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div width="100%" >
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Important Numbers" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
      
           <br />
           <br />
           <asp:Label ID="Label1" runat="server" Text="Select Service Name For Searching contacts "></asp:Label>
           :-&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#FFCC66" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="200px">
       </asp:DropDownList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [Name] FROM [Imp_Numbers] ORDER BY [Name]"></asp:SqlDataSource>
&nbsp;
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <br />
           <br />
           <br />
           <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" Width="669px">
               <AlternatingRowStyle BackColor="#CCCCCC" />
               <FooterStyle BackColor="#CCCCCC" />
               <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
               <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
           </asp:GridView>    <br>
       </asp:Panel>
        </center>
      
     
      
     

</asp:Content>



