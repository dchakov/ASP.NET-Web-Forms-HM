<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="_02.Employees.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gridview Employees</title>
</head>
<body>
    <form id="formMain" runat="server">
        <asp:GridView ID="GridViewEmployees" runat="server"
            AutoGenerateColumns="false" DataKeyNames="EmployeeID"
            AllowPaging="true">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                <asp:HyperLinkField Text="Details" DataNavigateUrlFields="EmployeeID"
                    DataNavigateUrlFormatString="EmpDetails.aspx?id={0}" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
