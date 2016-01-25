<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_02.Session.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formMain" runat="server">
        <div>
            <asp:TextBox runat="server" ID="TextBoxInput" />
            <asp:Button ID="ButtonSubmmit" runat="server" Text="Button" OnClick="ButtonSubmmit_Click" />
            <h3>Session Text:</h3>
            <asp:Label ID="LabelOutput" runat="server" />
        </div>
    </form>
</body>
</html>
