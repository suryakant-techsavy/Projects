<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="MemberRegistration.aspx.cs" Inherits="MemberRegistration" EnableEventValidation="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style1
        {
            width: 152px;
        }
         .auto-style6 {
             text-align: center;
         }
         .auto-style66 {
             height: 71px;
         }#user
          {
              padding-left:22px;
              background-position:left;
              background-repeat:no-repeat;
          }
         .taken {
             background-image: url(images.jpg);
         }.available{
              background-image:url(images (1).jpg);
          }
         .auto-style74 {
             background-color: #66FF33;
         }
          .auto-style89 {
            color: #FF0066;
            font-size: xx-large;
            font-family: "Arial Black";
            text-align: center;
            text-decoration: underline;
            }
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body topmargin="0" leftmargin="0" rightmargin="0"><br />
    
 <form runat="server">
     
    
   <center> <asp:Panel ID="Panel1" runat="server" BackColor="lavender" style="margin-top:0px" Height="1175px" Width="100%">
       <div class="auto-style89">
           <strong>
           <asp:Label ID="Label10" runat="server" BackColor="#9900CC" CssClass="auto-style7" ForeColor="Wheat" Height="54px" style="background-color: #FF0000; font-size: large;" Text="Member Registration Form" Width="748px"></asp:Label>
           <br />
           <br />
           </strong>
       </div>
       </strong>
       
  <div>

     <table cellspacing="5px" width="75%" style="animation:infinite;background-color:white" ><center>
    <tr>
        <td align="right"><br /><asp:Label ID="Label11" runat="server" Text="Member ID" />&nbsp:&nbsp</td>
        <td > 
            <br />
            <asp:TextBox ID="TextBox10" runat="server" BackColor="#D2DAC0" ForeColor="Blue" OnTextChanged="TextBox10_TextChanged" ReadOnly="True" Style="text-align:center" Width="200px" />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="Reload the page" ForeColor="#999966"></asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Label12" runat="server" Width="279px"
                Text="Auto Generated, remember 4 furure use." ForeColor="#9966FF"></asp:Label>
            <br />
        </td>
    </tr>
         <tr>
           <td align="right">
            <br />
            <asp:Label ID="Label4" runat="server" Text=" Flat No" />:&nbsp;</td>
        <td align="justify">  
            <br />
       
            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px" ForeColor="Black" Style="text-align:center" >
                <asp:ListItem Selected="True" Value="none">Choose  Correct Flat No :-</asp:ListItem>
                <asp:ListItem>1-A</asp:ListItem>
                <asp:ListItem>2-A</asp:ListItem>
                <asp:ListItem>3-A</asp:ListItem>
                <asp:ListItem>4-B</asp:ListItem>
                <asp:ListItem>5-B</asp:ListItem>
                <asp:ListItem>6-B</asp:ListItem>
                <asp:ListItem>7-C</asp:ListItem>
                <asp:ListItem>8-C</asp:ListItem>
                <asp:ListItem>9-C</asp:ListItem>
                <asp:ListItem>10-D</asp:ListItem>
                <asp:ListItem>11-D</asp:ListItem>
                <asp:ListItem>12-D</asp:ListItem>
            </asp:DropDownList>
       
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" ErrorMessage="Choose One Correct Flat No" Font-Bold="False" ForeColor="Red" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator>
       
             <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
       
             </td>
       
      </tr>
   
     <tr>
         <td align="right" > 
            <br />
            <asp:Label ID="Label1" runat="server" Text="Resident" />:&nbsp;</td>
        <td > 
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="false" Width="220px" Style="text-align:center" RepeatDirection="Horizontal" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" ForeColor="Black">
                <asp:ListItem>Owner</asp:ListItem>
                <asp:ListItem>Tenant/Pay n Guest</asp:ListItem>

            </asp:RadioButtonList> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="RadioButtonList1" ErrorMessage="select one choice" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

           </tr>
    
    <tr>
        <td align="right" class="auto-style66">
            <asp:Label ID="Label2" runat="server" Text=" Full Name" />: </td>
        <td class="auto-style66"> 
            <asp:TextBox ID="TextBox1" runat="server" Width="200px" 
                ForeColor="Black" Style="text-align:center" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Enter  Full Name" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="TextBox1" ValidationExpression="[A-Z a-z]+" 
                Display="Dynamic" ForeColor="Red">Enter Proper Full 
            Name</asp:RegularExpressionValidator>
        </td>
        
    </tr>
       <tr>
        <td align="right" class="auto-style66" > 
            <br />
            <asp:Label ID="Label15" runat="server" Text="No. of 2 Wheeler" />&nbsp:&nbsp</td>
        <td > 
            <br />
            <asp:TextBox ID="TextBox9" runat="server" MaxLength="2" 
                ForeColor="Black" Width="200px" Style="text-align:center" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                ControlToValidate="TextBox9" Display="Dynamic" ForeColor="Red">Enter  No. of 2 Wheeler</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="TextBox9" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="[0-9]" Display="Dynamic" ForeColor="Red">Enter Proper No. Of 2 Wheeler</asp:RegularExpressionValidator>
        </td>
    </tr>
       <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label16" runat="server" Text="No. of 4 Wheeler" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:TextBox ID="TextBox12" runat="server" MaxLength="2" 
               ForeColor="Black" Width="200px" Style="text-align:center" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                ControlToValidate="TextBox12" Display="Dynamic" ForeColor="Red">Enter  No. of 4 Wheeler</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                ControlToValidate="TextBox12" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="[0-9]" Display="Dynamic" ForeColor="Red">Enter Proper No. Of 4 Wheeler</asp:RegularExpressionValidator>
        </td>
    </tr>
      
         <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label5" runat="server" Text="Contact No 1" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:TextBox ID="TextBox5" runat="server" MaxLength="10" 
                ForeColor="Black" Width="200px" Style="text-align:center" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox5" Display="Dynamic" ForeColor="Red">Enter Contact No.</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="[0-9]{10}" Display="Dynamic" ForeColor="Red">Enter Proper  10-digit Contact No</asp:RegularExpressionValidator>
        </td>
    </tr>
     <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contact No 2 (Optional)" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" 
                  ForeColor="Black" Width="200px" Style="text-align:center" /> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" 
                ValidationExpression="[0-9]{10}" ForeColor="Red" Display="Dynamic">Enter Proper  10-digit Contact No</asp:RegularExpressionValidator>
        </td>
    </tr>
    
   <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label6" runat="server" Text="Email" />&nbsp:&nbsp</td>
        <td ><br /> 
           
            
                    <br />
           
            <asp:TextBox ID="TextBox6" runat="server"
                ForeColor="Black" Width="200px" Style="text-align:center" AutoPostBack="true" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Type correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox6" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Enter 
            Email id</asp:RequiredFieldValidator>

                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>

              
                   
        </td>
    </tr>
     
    <tr>
        <td align="right" > 
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Password" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <br />
            <asp:TextBox ID="TextBox7" runat="server" TextMode="Password" 
               ForeColor="Black" Width="200px" Style="text-align:center" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Enter 
            Password</asp:RequiredFieldValidator>
        </td>
    </tr>

    <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label8" runat="server" Text="Confirm Password" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:TextBox ID="TextBox8" runat="server" ForeColor="Black"  Style="text-align:center" TextMode="Password" Width="200px" />
            <asp:CompareValidator 
                ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" 
                ControlToValidate="TextBox8" ErrorMessage="CompareValidator" ForeColor="Red" Display="Dynamic">Password Must 
            Match</asp:CompareValidator>
        </td>
    </tr>

    <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label9" runat="server" Text="Security Question" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Black" Width="200px" Style="text-align:center" >
            <asp:ListItem Selected="True" Value="none"><--select--></asp:ListItem>
            <asp:ListItem>What is the name of your childhood friend ?</asp:ListItem>
            <asp:ListItem>What was your first phone number ?</asp:ListItem>
            <asp:ListItem>What town were you born in ?</asp:ListItem>
            <asp:ListItem>What was the name of your first teacher ?</asp:ListItem>
            <asp:ListItem>Who is your favourite author ?</asp:ListItem>
            <asp:ListItem>What is your favourite food ?</asp:ListItem>
            <asp:ListItem>What was the name of your school ?</asp:ListItem>
                <asp:ListItem>Who is your favourite actor ?</asp:ListItem>
                  <asp:ListItem>how old are you ? </asp:ListItem>
                       <asp:ListItem>What is your favourite timepass ?</asp:ListItem>
        </asp:DropDownList> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" InitialValue="none"  runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Select 
            Question</asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td align="right" > 
            <br />
            <asp:Label ID="Label14" runat="server" Text="Answer" />&nbsp:&nbsp</td>
        <td> 
            <br />
            <asp:TextBox ID="TextBox13" runat="server" Width="200px"
               ForeColor="Black" Style="text-align:center" /> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox13" ErrorMessage="RequiredFieldValidator" ForeColor="Red" Display="Dynamic">Write 
            Answer</asp:RequiredFieldValidator>
        </td>
    </tr>
      <tr>
        <td align="right" > 
            <br />
            Upload Photo:<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (Image Size Should Be Upto 50kb)</td>
        <td> 
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" Width="200px" Style="text-align:center" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Choose Photo To Upload" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>

    
    <tr>
        <td align="right" colspan="1" rowspan="0" > &nbsp;</td>
        <td colspan="0" rowspan="0"> 
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" di OnCheckedChanged="CheckBox1_CheckedChanged" Text="Provided Information Is Correct as My Understanding.If  Incorrect I will pay penalty of Rs. 5000/-" CausesValidation="True" Enabled="False" />
        </td>
    </tr>
  
    <tr>
        <td  colspan="2" class="auto-style6">
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server"  Text="Submit" 
                onclick="Button1_Click" Width="100px" /> &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server"  Text="Reset" OnClick="Button2_Click" Width="100px" />
           <br /><br />
        </td>
    </tr>
       
       </center>
 
    </table>
    </div>

       </asp:Panel>
       </center>
         
         </form>
        </body>

      
</asp:Content>


    
    
    


