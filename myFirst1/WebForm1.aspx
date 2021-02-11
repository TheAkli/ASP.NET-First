<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myFirst1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
 <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
&nbsp;<asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:ListBox ID="lstLocation" runat="server">
            <asp:ListItem>Html</asp:ListItem>
            <asp:ListItem>c++</asp:ListItem>
            <asp:ListItem>php</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <br />
        <asp:RadioButton ID="chkASP" runat="server" Text="ASP" />
        <br />
        <asp:RadioButton ID="chkC" runat="server" Text="c++" />
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
