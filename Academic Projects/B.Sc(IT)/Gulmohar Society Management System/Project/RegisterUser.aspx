<%@ Page Title="" Language="C#" MasterPageFile="~/Welcome.master" AutoEventWireup="true" CodeFile="RegisterUser.aspx.cs" Inherits="RegisterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <center>
            <table border="0" cellpadding="0" cellspacing="0">
    <tr>
        <th colspan="3">
            Registration
        </th>
    </tr>
    <tr>
        <td>
            Username
        </td>
        <td>
            <asp:TextBox ID="txtUsername" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtUsername"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Password
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txtPassword"
                runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Confirm Password
        </td>
        <td>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" />
        </td>
        <td>
            <asp:CompareValidator ErrorMessage="Passwords do not match." ForeColor="Red" ControlToCompare="txtPassword"
                ControlToValidate="txtConfirmPassword" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Email
        </td>
        <td>
            <asp:TextBox ID="txtEmail" runat="server" />
        </td>
        <td>
            <asp:RequiredFieldValidator ErrorMessage="Required" Display="Dynamic" ForeColor="Red"
                ControlToValidate="txtEmail" runat="server" />
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="txtEmail" ForeColor="Red" ErrorMessage="Invalid email address." />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td>
            <asp:Button Text="Submit" runat="server" OnClick="RegisterUser1" />
        </td>
        <td>
        </td>
    </tr>
</table>

        </center>
    </form>
</asp:Content>

