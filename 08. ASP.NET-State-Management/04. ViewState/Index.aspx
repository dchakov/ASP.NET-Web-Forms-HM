<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="_04.ViewState.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="scripts/jquery-2.2.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBoxInput" runat="server"></asp:TextBox>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
           
            <button id="deleteViewstate">Delete ViewState</button>

            <h3>Result in viewstate</h3>
            <asp:Label ID="LabelOutput" runat="server"></asp:Label>
        </div>
    </form>
    <script>
        $(document).ready(
            $("#deleteViewstate").on("click", function () {
                $("#__VIEWSTATE").val("");
            }));
    </script>
</body>
</html>
