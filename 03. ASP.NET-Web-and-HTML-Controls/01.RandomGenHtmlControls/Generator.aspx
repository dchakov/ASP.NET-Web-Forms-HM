<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Generator.aspx.cs"
    Inherits="RandomGenHtmlControls.Generator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formMain" runat="server">
    <div runat="server" id="divContainer">
        <label for="lowerBoundary">Lower Range</label>
        <input type="number" runat="server" id="lowerBoundary" />
        <br />
        <label for="upperBoundary">Upper Range</label>
        <input type="number" runat="server" id="upperBoundary" />
        <br />
        <input type="button" runat="server" id="ButtonSubmit"
            value="Submit" onserverclick="ButtonSubmit_ServerClick"/>
    </div>
        <p id="textField" runat="server"></p>
    </form>
</body>
</html>
