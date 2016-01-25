<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_03.Cookies.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav>
                <a href="Home.aspx">Home</a>
                <a href="Login.aspx">Login</a>
            </nav>
            <h4>
                <asp:Literal ID="LiteralLogIn" runat="server"></asp:Literal>
            </h4>
        </div>
    </form>
</body>
</html>
