<%@ Page Language="C#"
    AutoEventWireup="true"
    CodeBehind="Hello.aspx.cs"
    Inherits="_01.Hello.Hello" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web forms</title>
    <script src="scripts/bootstrap.min.js"></script>
    <link href="content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="hello" runat="server">
        <div>

            <asp:Label ID="LabelName" runat="server" Text="Enter your name:"></asp:Label>

            <asp:TextBox ID="TextName" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" CssClass="btn btn-primary" />

            <br />
            <br />
            <asp:Label ID="TextResult" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
