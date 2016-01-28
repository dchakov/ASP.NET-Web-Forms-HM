<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UserMenuControl.Default" %>

<%@ Register Src="~/Contrlos/MenuLinks.ascx" TagPrefix="uc1" TagName="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery-1.9.1.min.js"></script>
</head>
<body>
    <form id="formMain" runat="server">
    <div>
        <uc1:Menu runat="server" id="MenuAside" />
        
        <br/>
        <p>Control with custom font (Times New Roman)</p>
        <uc1:Menu runat="server" id="MenuCustomFont" FontFamily="Times New Roman" />
    </div>
    </form>
</body>
</html>
