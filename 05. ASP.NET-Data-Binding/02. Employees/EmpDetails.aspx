<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpDetails.aspx.cs" Inherits="_02.Employees.EmpDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formMain" runat="server">
        <h3>Employee details:</h3>
        <asp:DetailsView ID="DetailsViewEmployee" runat="server" 
            AutoGenerateRows="true" 
            Height="50px" Width="125px">
            
        </asp:DetailsView>
        <asp:Button ID="ButtonBack" runat="server" Text="Go back" OnClick="ButtonBack_Click" />
    </form>
</body>
</html>
