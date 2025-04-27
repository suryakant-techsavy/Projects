<%@ Page Title="" Language="C#" MasterPageFile="~/chairman.master" AutoEventWireup="true" CodeFile="Manageusers.aspx.cs" Inherits="Manageusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <asp:Label ID="Label4" runat="server" Text="*" style="color: #990000"></asp:Label>
	     
	 
	    <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click"
	        style="font-weight: 700; font-size: large">Take Preview</asp:LinkButton>
    <br /><br />
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" EnableModelValidation="True" Width="784px">
          <Columns>
              <asp:CommandField ShowSelectButton="True" />
              <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
              <asp:BoundField DataField="Role" HeaderText="Role" SortExpression="Role" />
              <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
              <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
              <asp:BoundField DataField="memsec" HeaderText="memsec" SortExpression="memsec" />
              <asp:BoundField DataField="memans" HeaderText="memans" SortExpression="memans" />
              <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" SortExpression="Flat_No" />
              <asp:BoundField DataField="contact_1" HeaderText="contact_1" SortExpression="contact_1" />
              <asp:BoundField DataField="contact_2" HeaderText="contact_2" SortExpression="contact_2" />
              <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
              <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                   
       <asp:ImageField DataImageUrlField="FilePath" ControlStyle-Width="100" 
        ControlStyle-Height = "100" HeaderText = "Preview Image"/>

          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT * FROM [Login_Info]"></asp:SqlDataSource>

	
</asp:Content>

