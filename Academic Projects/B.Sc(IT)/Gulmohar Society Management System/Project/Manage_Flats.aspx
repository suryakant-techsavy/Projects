<%@ Page Title="" Language="C#" MasterPageFile="~/chairman.master" AutoEventWireup="true" CodeFile="Manage_Flats.aspx.cs" Inherits="Manage_Flats" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <script type="text/javascript">
	        function print_page() {
	            window.print();
	        }
	    </script>
    <style type="text/css">
	.DataList
{
font-family:Verdana;
	font-size:10pt;
	font-weight:normal;
	color:black;
	}
	       
	</style>
	
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color:#CCFF66; font-size: large; color: #FF0000;" Text="Manage Flats" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
      
  
	     
             <div>
                 <a href="#" onclick="javascript :print_page();"><strong><span class="style1">Take printout</span></strong></a>
             </div>
             <br />
             <br />
             <div>
                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Flat_No" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical" Width="872px">
                     <AlternatingRowStyle BackColor="#CCCCCC" />
                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" />
                         <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" ReadOnly="True" SortExpression="Flat_No" />
                         <asp:BoundField DataField="Username" HeaderText="Owner Name" SortExpression="Username" />
                         <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                         <asp:BoundField DataField="ResidentType" HeaderText="ResidentType" SortExpression="ResidentType" />
                         <asp:BoundField DataField="TenantName" HeaderText="TenantName" SortExpression="TenantName" />
                         <asp:ImageField DataImageUrlField="Tenant_Picpath" ControlStyle-Width="70"  ControlStyle-Height = "70" HeaderText = " Tenant Photo"/>
                         <asp:BoundField DataField="AreaCarpet" HeaderText="AreaCarpet" SortExpression="AreaCarpet" />
                         <asp:BoundField DataField="AreaBuiltUp" HeaderText="AreaBuiltUp" SortExpression="AreaBuiltUp" />
                       </Columns>
                     <FooterStyle BackColor="#CCCCCC" />
                     <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                     <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT Flat_No, Username, AreaCarpet, AreaBuiltUp, Status, ResidentType, TenantName, Tenant_Picpath FROM Flat_Details" UpdateCommand="UPDATE Flat_Details SET AreaCarpet = @AreaCarpet, AreaBuiltUp = @AreaBuiltUp, Status = @Status, ResidentType = @ResidentType, TenantName = @TenantName WHERE (Flat_No = @Flat_No) AND (Username = @Username)" DeleteCommand="DELETE FROM Flat_Details WHERE (Flat_No = @Flat_No)">
                     <DeleteParameters>
                         <asp:Parameter Name="Flat_No" />
                     </DeleteParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="AreaCarpet" />
                         <asp:Parameter Name="AreaBuiltUp" />
                         <asp:Parameter Name="Status" />
                         <asp:Parameter Name="ResidentType" />
                         <asp:Parameter Name="TenantName" />
                         <asp:Parameter Name="Flat_No" />
                         <asp:Parameter Name="Username" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
             </div>
         </asp:Panel>
         </center>
                     
    
              
                         
</asp:Content>

