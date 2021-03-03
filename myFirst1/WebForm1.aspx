<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="myFirst1.WebForm1" Trace="true" %>

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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="tutorialID" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="tutorialID" HeaderText="tutorialID" ReadOnly="True" SortExpression="tutorialID" />
                <asp:BoundField DataField="tutorialName" HeaderText="tutorialName" SortExpression="tutorialName" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myFirstConnectionString %>" DeleteCommand="DELETE FROM [firstTable] WHERE [tutorialID] = @tutorialID" InsertCommand="INSERT INTO [firstTable] ([tutorialID], [tutorialName]) VALUES (@tutorialID, @tutorialName)" SelectCommand="SELECT * FROM [firstTable]" UpdateCommand="UPDATE [firstTable] SET [tutorialName] = @tutorialName WHERE [tutorialID] = @tutorialID">
            <DeleteParameters>
                <asp:Parameter Name="tutorialID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="tutorialID" Type="String" />
                <asp:Parameter Name="tutorialName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="tutorialName" Type="String" />
                <asp:Parameter Name="tutorialID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    </form>
</body>
</html>
