﻿<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="TicTacToe.aspx.cs" Inherits="_04.TicTacToe.TicTacToe" 
    EnableViewState="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="content/style.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="The description of my page" />
</head>
<body>
    <form id="formMain" runat="server">
        <asp:Button ID="ButtonTopLeft" runat="server" Text="-" OnClick="ButtonTopLeft_Click" />
        <asp:Button ID="ButtonTopCenter" runat="server" Text="-" OnClick="ButtonTopCenter_Click" />
        <asp:Button ID="ButtonTopRight" runat="server" Text="-" OnClick="ButtonTopRight_Click" />
        <br />
        <asp:Button ID="ButtonMiddleLeft" runat="server" Text="-" OnClick="ButtonMiddleLeft_Click" />
        <asp:Button ID="ButtonMiddleCenter" runat="server" Text="-" OnClick="ButtonMiddleCenter_Click" />
        <asp:Button ID="ButtonMiddleRight" runat="server" Text="-" OnClick="ButtonMiddleRight_Click" />
        <br />
        <asp:Button ID="ButtonBottomLeft" runat="server" Text="-" OnClick="ButtonBottomLeft_Click" />
        <asp:Button ID="ButtonBottomCenter" runat="server" Text="-" OnClick="ButtonBottomCenter_Click" />
        <asp:Button ID="ButtonBottomRight" runat="server" Text="-" OnClick="ButtonBottomRight_Click" />
        <br />

        <asp:Label ID="result" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="NewGame" runat="server" Text="New Game" OnClick="NewGame_Click" />
       
    </form>
</body>
</html>
