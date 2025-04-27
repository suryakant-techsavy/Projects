<%@ Page Title="" Language="C#" MasterPageFile="~/chairman.master" AutoEventWireup="true" CodeFile="Flat_Details.aspx.cs" Inherits="Flat_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

                       .auto-style104 {
                           text-align: center;
                       }
         .auto-style103 {
             text-align: left;
         }
                   
      .auto-style107 {
            text-align: center;
            height: 49px;
        }
        .auto-style108 {
            text-align: left;
            height: 49px;
        }
    .auto-style109 {
        width: 700px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style103">
 
    <center>
    <div style="height:110%">
           <strong>
        <asp:Label ID="Label21" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #CCFF66; font-size: large; color: #FF0000;" Text="Flat Details" Width="747px"></asp:Label>
        <br />
        <br /></strong>
       </div>
   
    
       <center> <table align="center" class="auto-style109">
         
         <tr>
            <td class="auto-style107" >
                <br />
                <asp:Label ID="Label22" runat="server" Text="Flat No:-" />:</td>
        <td class="auto-style108" > 
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" AutoPostBack="True" BackColor="#FFCC66">
                <asp:ListItem>001</asp:ListItem>
                <asp:ListItem>002</asp:ListItem>
                <asp:ListItem>003</asp:ListItem>
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
                <asp:ListItem>103</asp:ListItem>
                <asp:ListItem>201</asp:ListItem>
                <asp:ListItem>202</asp:ListItem>
                <asp:ListItem>203</asp:ListItem>
                <asp:ListItem>301</asp:ListItem>
                <asp:ListItem>302</asp:ListItem>
                <asp:ListItem>303</asp:ListItem>
                <asp:ListItem>401</asp:ListItem>
                <asp:ListItem>402</asp:ListItem>
                <asp:ListItem>403</asp:ListItem>
                <asp:ListItem>501</asp:ListItem>
                <asp:ListItem>502</asp:ListItem>
                <asp:ListItem>503</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Required" Display="Dynamic" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:collegeConnectionString2 %>" SelectCommand="SELECT [name] FROM [Login_Info] WHERE ([Flat_No] = @Flat_No)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Flat_No" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                <asp:Label ID="Label23" runat="server" Text="*" />
            <br />
        </td>
    </tr>

        
    <tr>
        <td  >            
            <br /><center>
            <asp:Label ID="Label4" runat="server" Text="Owner Name:-" />: </td>
     

        <td class="auto-style103" >
            <br />
            <asp:TextBox ID="TextBox7"   runat="server" Width="200px" 
                ForeColor="Black" Style="text-align:center" BackColor="#FFCC66" ReadOnly="True" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="Required" Display="Dynamic" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
            <br />
        </td>

    </tr> 

           
</center>
         <tr>
           <td class="auto-style104" >
          
               <br />
          
            <asp:Label ID="Label1" runat="server" Text="Area Carpet:-" />:</td>
     <center>

        <td class="auto-style103">
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Columns="4" Rows="3" style="text-align:center" TextMode="SingleLine" Width="200px" BackColor="#FFCC66" ReadOnly="True">1500x3000</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  Font-Bold="True" Display="Dynamic"  ForeColor="Red" ControlToValidate="TextBox4">Required</asp:RequiredFieldValidator>
             <br />
      </td>
  </tr>

           
</center>
    <tr>
           <td class="auto-style104" >
          
               <br />
          
            <asp:Label ID="Label5" runat="server" Text=" Area Built Up:-" />:</td>
     <center>

        <td class="auto-style103">
            <br />
            <br />
            <asp:TextBox ID="TextBox15" runat="server" Columns="4" Rows="3" style="text-align:center" Width="200px" BackColor="#FFCC66" ReadOnly="True">2 BHK</asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"  Font-Bold="True" Display="Dynamic"  ForeColor="Red" ControlToValidate="TextBox15">Required</asp:RequiredFieldValidator>
            <br />
      </td>
  </tr>

           
</center>
  <tr>
        <td class="auto-style104"> 
            <br />
           <asp:Label ID="Label7" runat="server" Text="Status:-" />:</td>
     <center>

        <td class="auto-style103">
            <br />
            <asp:TextBox ID="TextBox16"   runat="server" Width="200px" 
                ForeColor="Black" Style="text-align:center" BackColor="#FFCC66" ReadOnly="True" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox16" Display="Dynamic" Font-Bold="True"  ForeColor="Red">Required</asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

           
</center>
        
     <tr>
        <td class="auto-style104"> 
            <br />
           <asp:Label ID="Label8" runat="server" Text="Resident Type:-" />:</td>
     <center>

        <td> 
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server"  CellPadding="0" Height="16px" Width="212px" CausesValidation="False" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Value="Owner">Owner</asp:ListItem>
                <asp:ListItem Value="Tenant">Tenant</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"  Font-Bold="True" Display="Dynamic"  ForeColor="Red" ControlToValidate="RadioButtonList1">Required</asp:RequiredFieldValidator>
            <br />
        </td>
    </tr> 
           
           
</center>
           
     <tr>
                <td class="auto-style104">
                    <br />
                   <asp:Label ID="Label10" runat="server" Text="Tenant Name:-" />:</td>
     <center>

                <td class="auto-style103" >
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px" ForeColor="Black" Style="text-align:center" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Required" Display="Dynamic" ForeColor="Red" Font-Bold="True"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="Enter valid Name" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="[A-Z a-z]*" Display="Dynamic"></asp:RegularExpressionValidator>
                       <br />
                       </td>
            </tr>

           
</center>
          <tr>
        <td > 
            <br />
        <asp:Label ID="Label12" runat="server" Text="Upload  Tenant Photo" />&nbsp:&nbsp</td>    
        <td> 
            <br />
            <div>
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="FileUpload1"  Font-Bold="True" ErrorMessage="Choose Photo To Upload" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
            <br />
        </td>
    </tr>
     
    <tr>
        <td></td>
        <td class="auto-style103">
            <br />
        <asp:Button ID="btnUpload" runat="server"  Text="Upload" OnClick="btnUpload_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset"  Width="60px" Height="26px" OnClick="Button2_Click" />
         </td>
   </tr> 
    <tr>
                <td>
                 
                </td>
   
    
      
                <td>&nbsp;</td>
                                
    </tr>
           
 </table>
    <br />
</asp:Content>

