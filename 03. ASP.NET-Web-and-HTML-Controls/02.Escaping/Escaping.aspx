<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Escaping.aspx.cs" Inherits="Escaping.Escaping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 175px">
    <form id="formMain" runat="server">
        <div>
            <asp:TextBox ID="TextBoxText" runat="server" Width="440px">&lt;h1&gt;Heading&lt;/h1&gt;Text&lt;script&gt;alert(&quot;bug!&quot;)&lt;/script&gt;</asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ButtonShowText" runat="server" Text="Show text" OnClick="ButtonShowText_Click" />
            <br />
            <br />
            <strong>TextBox: </strong>
            <asp:TextBox ID="TextBoxResult" runat="server" Width="773px"></asp:TextBox>
            <br />
            <strong>Label: </strong>
            <asp:Label ID="LabelResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
