<%@ Page Title="" Language="C#" MasterPageFile="~/chairman.master" AutoEventWireup="true" CodeFile="AddNotices.aspx.cs" Inherits="AddNotices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
    
     .auto-style77 {
             color: #000000;
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
             color: #FFFFFF;
         }
	
	</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center><asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Notice Corner" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br /><br />
          <br />
&nbsp;&nbsp;&nbsp; <strong>
       <asp:Label ID="Label1" runat="server" Text="GulMohar Co-op Housing Society" Width="74%" BorderColor="#999999" CssClass="auto-style80"></asp:Label>        
          </strong>&nbsp;        
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:Label ID="Label5" runat="server" Text="!!!Notices!!!" Width="60%" BorderColor="#999999" CssClass="auto-style81"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <em>
    <asp:TextBox ID="TextBox3" runat="server" Height="86px" Width="60%"  style="text-align:center"  ReadOnly="True" BorderColor="#999999" CssClass="auto-style82" Columns="4" Rows="2" TextMode="MultiLine"></asp:TextBox>
          </em>
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;    
    

    <asp:TextBox ID="TextBox2" runat="server" Width="25%" CssClass="auto-style77" Height="50px" TextMode="MultiLine"></asp:TextBox>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="182px" />
    <br />
          <br /><br />
          <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Caption="NoticeBox" CellPadding="3" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" Width="626px">
              <AlternatingRowStyle BackColor="#CCCCCC" />
              <Columns>
                  <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
              </Columns>
              <FooterStyle BackColor="#CCCCCC" />
              <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
              <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
          </asp:GridView>
         
          <asp:TextBox ID="TextBox4" runat="server" Height="22px" Width="179px"></asp:TextBox>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT Date, name FROM Notice ORDER BY Date" DeleteCommand="DELETE FROM Notice WHERE (id = @id)">
              <DeleteParameters>
                  <asp:Parameter Name="id" />
              </DeleteParameters>
         </asp:SqlDataSource>
          <br />
        
          <br /><br />
         <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload"
OnClick="btnUpload_Click" />
<br />
<asp:Label ID="lblMessage" runat="server" Text=""
Font-Names = "Arial"></asp:Label>
         
          <br /><br />
  </asp:Panel>     
</center>
     
</asp:Content>

