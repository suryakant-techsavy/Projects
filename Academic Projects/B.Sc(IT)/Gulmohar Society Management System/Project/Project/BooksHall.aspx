<%@ Page Title="" Language="C#" MasterPageFile="~/secretarypage.master" AutoEventWireup="true" CodeFile="BooksHall.aspx.cs" Inherits="BooksHall" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center> <asp:Panel ID="Panel1" runat="server" BackColor="white"  Height="110%" Width="100%">
    <div width="100%">
           <strong>
           <asp:Label ID="Label10" runat="server" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Book Hall" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div><br /><br />
    <asp:GridView ID="GridView1" runat="server" Width="75%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="BookingId" DataSourceID="SqlDataSource1" EnableModelValidation="True" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="BookingId" HeaderText="BookingId" ReadOnly="True" SortExpression="BookingId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Flat_No" HeaderText="Flat_No" SortExpression="Flat_No" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Confirm_Date" HeaderText="Confirm_Date" SortExpression="Confirm_Date" />
            <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT BookingId, Name, Flat_No, Date, Subject, Description, Status, Confirm_Date, Reply FROM Hall_Allocation ORDER BY BookingId" DeleteCommand="DELETE FROM Hall_Allocation WHERE (BookingId = @BookingId)">
        <DeleteParameters>
            <asp:Parameter Name="BookingId" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
  
        <table style="height:110%;width:40%">
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Choose Booking Id:-"></asp:Label></td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataTextField="BookingId" DataValueField="BookingId" Width="250px" DataSourceID="SqlDataSource2"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [BookingId] FROM [Hall_Allocation] ORDER BY [BookingId]"></asp:SqlDataSource>
            
                <br />
            
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Name:-"></asp:Label></td>
               
               <td> 
                   <br />
                   <asp:TextBox ID="TextBox2" runat="server" BackColor="#D2DAC0" ReadOnly="True" style="text-align:center" Width="250px"></asp:TextBox>
                   <br />
                </td>
              </tr>
            <tr>
                <td>
                    <br />
                <asp:Label ID="Label4" runat="server" Text="Flat_No:-"></asp:Label></td>
               
               <td> 
                   <br />
                   <asp:TextBox ID="TextBox3" runat="server" BackColor="#D2DAC0" ReadOnly="True" style="text-align:center" Width="250px"></asp:TextBox></td>
                </tr>
            <tr>
                <td>
            
                    <br />
            
                <asp:Label ID="Label7" runat="server" Text="Booking Request Date:-"></asp:Label></td>
                
              <td>  
                  <br />
                  <asp:TextBox ID="TextBox5" runat="server" BackColor="#D2DAC0" ReadOnly="True" style="text-align:center" Width="250px"></asp:TextBox></td>
                
               
                </tr>
            <tr>
                <td>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Subject:-"></asp:Label></td>
                    <td>          
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" BackColor="#D2DAC0" ReadOnly="True" style="text-align:center" Width="250px">Hall Booking Request</asp:TextBox>
                </td>
                </tr>
            <tr>
                <td>
                    <br />
                <asp:Label ID="Label5" runat="server" Text="Description:-"></asp:Label></td>
                
               <td> 
                   <br />
                   <asp:TextBox ID="TextBox4" runat="server" Height="81px" placeholder="Here Mention Purpose & Date For Hall Booking" style="text-align:center" TextMode="MultiLine" Width="250px" BackColor="#D2DAC0" ReadOnly="True"></asp:TextBox>
                </td>       
                </tr>
            <tr>
                <td>        
                    <br />
                    <asp:Label ID="Label6" runat="server" Text=" Booking Date:-"></asp:Label></td>
                <td>  
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" BackColor="#D2DAC0" ReadOnly="True" Width="250px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/srddrtfgvdrtfgh/sdfghj/Calendar.gif" OnClick="ImageButton1_Click" Width="21px" />
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" BackColor="Aqua" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="250px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" BackColor="White" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="Lime" Font-Bold="True" ForeColor="#FF0066" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar></td>
                </tr>
            <tr>
                <td>
                    <br />
                <asp:Label ID="Label8" runat="server" Text=" Status:-  "></asp:Label></td>
                <td>
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" ReadOnly="True" Width="250px" Enabled="False"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="Reply:-  "></asp:Label></td>
                
               <td> 
                   <br />
                   <asp:TextBox ID="TextBox9" runat="server" Rows="4" TextMode="MultiLine" Width="250px" Enabled="False"></asp:TextBox></td>
              </tr>
            <tr>
                <td colspan="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" Width="110px" />
                
               </td>
            </tr>
           
    </table>
      </asp:Panel>
    </center>
</asp:Content>

