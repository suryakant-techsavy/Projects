<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.master" AutoEventWireup="true" CodeFile="Imp_Nomem.aspx.cs" Inherits="Imp_Nomem" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    
    <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#CCFF66" CssClass="auto-style7" ForeColor="Red" Height="54px" style=" font-size: large;" Text="Important Numbers" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br /><br />
     <asp:Label ID="Label1" runat="server" Text="Select Service Name For Searching contacts "></asp:Label>
        :-&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" BackColor="#FFFF66" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="250px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [Name] FROM [Imp_Numbers] ORDER BY [Name]"></asp:SqlDataSource>
        &nbsp;&nbsp;
    
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
    <asp:GridView ID="GridView1" runat="server" Width="669px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
        <br />
       </asp:Panel>
       </center>
     

</asp:Content>


