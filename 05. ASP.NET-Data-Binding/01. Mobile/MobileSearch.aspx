<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileSearch.aspx.cs" Inherits="_01.Mobile.MobileSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mobile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="formMain" runat="server">
        Producer:
        <asp:DropDownList ID="DropDownListProducers" runat="server"
            AutoPostBack="true"
            DataTextField="Name"
            OnSelectedIndexChanged="DropDownListProducers_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        Model:
        <asp:DropDownList ID="DropDownListModel" runat="server"
            AutoPostBack="true" ItemType="_01.Mobile.Producer">
        </asp:DropDownList>
        <br />
        <br />
        Extras:
        <asp:CheckBoxList ID="CheckBoxListExtras" runat="server" DataTextField="Name">
        </asp:CheckBoxList>
        <br />
        Engine:
        <asp:RadioButtonList ID="RadioButtonListEngine" runat="server">
        </asp:RadioButtonList>
        <br />
        <asp:Button ID="ButtonSubmit" runat="server" Text="Search" OnClick="ButtonSubmit_Click" />
    </form>
    <br />
    <br />
    <asp:Literal ID="LiteralSubmit" runat="server" Visible="false"></asp:Literal>
</body>
</html>
