<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_01.BrowserAndId.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Your browser is:
                    <asp:Label ID="LabelBrowser" Text="text" runat="server" />
            </p>
             <p>
                Your IP address is:
                    <asp:Label ID="LabelIpAddress" Text="text" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
