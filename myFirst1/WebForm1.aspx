<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myFirst1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="lblName" runat="server">
        <div id="txtName">
            Name:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:ListBox ID="lstLocation" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
            <asp:ListItem>HTML</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
            <asp:ListItem>JS</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:CheckBox ID="chkC" runat="server" Text="BootsTraap" />
        <br />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Angular" />
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" Text="Valider" />
        </p>
    </form>
</body>
</html>
