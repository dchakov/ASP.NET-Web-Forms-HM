<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generator.aspx.cs" Inherits="_01.RandomGenWebControls.Generator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Lower boundary"></asp:Label>
            <asp:TextBox ID="LowerBoundary" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Upper boundary"></asp:Label>
            <asp:TextBox ID="UpperBoundary" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Result" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
