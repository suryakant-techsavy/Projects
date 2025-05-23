﻿<%@ Page Title="" Language="C#" MasterPageFile="~/chairman.master" AutoEventWireup="true" CodeFile="imp_noadmin.aspx.cs" Inherits="imp_noadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style103 {
            width: 460px;
            height: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Important Numbers" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br />
       <asp:Label ID="Label14" runat="server" Text="*"></asp:Label>
       <table class="auto-style103">
           <tr>
               <td>
                   <asp:Label ID="Label11" runat="server" Text="Service Name:-"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                   <strong>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="[A-Za-z]*">Enter Proper Service Name</asp:RegularExpressionValidator>
                   </strong></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label12" runat="server" Text="Contact 1:-"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" Width="200px"></asp:TextBox>
                   <strong>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{10}">Enter Proper 10 digit Contact No</asp:RegularExpressionValidator>
                   </strong></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label13" runat="server" Text="Contact 2"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" MaxLength="10" Width="200px"></asp:TextBox>
                   <strong>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="[0-9]{10}">Enter Proper 10 digit Contact No</asp:RegularExpressionValidator>
                   </strong></td>
           </tr>
           <tr>
               <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Service" />
               </td>
           </tr>
       </table>
       <br />
       <br />
       <br />
       <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Name" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal" Width="615px">
           <Columns>
               <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
               <asp:BoundField DataField="Contact_1" HeaderText="Contact_1" SortExpression="Contact_1" />
               <asp:BoundField DataField="Contact_2" HeaderText="Contact_2" SortExpression="Contact_2" />
           </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" DeleteCommand="DELETE FROM Imp_Numbers WHERE (Name = @Name)" SelectCommand="SELECT * FROM [Imp_Numbers] ORDER BY [Name]" UpdateCommand="UPDATE Imp_Numbers SET Name = @Name, Contact_1 = @Contact_1, Contact_2 = @Contact_2 WHERE (Name = @Name)">
           <DeleteParameters>
               <asp:Parameter Name="Name" />
           </DeleteParameters>
           <UpdateParameters>
               <asp:Parameter Name="Name" />
               <asp:Parameter Name="Contact_1" />
               <asp:Parameter Name="Contact_2" />
           </UpdateParameters>
       </asp:SqlDataSource>
       <br />
       <br />
       <asp:Label ID="Label1" runat="server" Text="Enter Service Name For Searching contacts "></asp:Label>
       :-<asp:TextBox ID="TextBox1" runat="server" placeholder="eg.Electrician,Cablewala,Plumber,Police Station etc." Width="301px"></asp:TextBox>
    
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" Width="74px" />
    
    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <br />
       <br /><br />
    <asp:GridView ID="GridView1" runat="server" Width="669px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" EnableModelValidation="True" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
       </asp:Panel>
       </center>
     
 
</asp:Content>



