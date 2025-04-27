<%@ Page Title="" Language="C#" MasterPageFile="~/MemberPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><body bgcolor="black" style="color: #808000; margin-left: 30px; width: 475px;">
    <form id="form1" >
    <br />
    <div>
        <p style="font-family: 'Times New Roman', Times, serif; font-size: large; color: #808000;
            font-weight: bold; position: inherit">
            Is there necessary to paint our society???</p>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Yes</asp:ListItem>
       
            <asp:ListItem>No</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Vote_Click" Text="Vote" />
        &nbsp&nbsp
        <asp:Button ID="Button2" runat="server" Text="View Votes" OnClick="ViewVotes_Click" />
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
        <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label><br />
        <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </div>
    </form>
</body>
</asp:Content>

