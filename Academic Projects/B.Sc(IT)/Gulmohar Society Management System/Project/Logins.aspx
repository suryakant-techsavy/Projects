<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logins.aspx.cs" Inherits="Logins" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       choose Role: <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>admin</asp:ListItem>
            <asp:ListItem>secretary</asp:ListItem>
            <asp:ListItem Selected="True">member</asp:ListItem>
        </asp:DropDownList><br />
        Username:-<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
       Password:- <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label1" runat="server" Text="error to be displayed"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" Text="reset" OnClick="Button2_Click" />
    
    </div>
    </form>
</body>
</html>
