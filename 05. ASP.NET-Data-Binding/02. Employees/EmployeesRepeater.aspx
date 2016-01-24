<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeesRepeater.aspx.cs" Inherits="_02.Employees.EmployeesRepeater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="formMain" runat="server">
        <asp:Repeater ID="RepeaterEmployees" runat="server" ItemType="_02.Employees.Employee">
            <HeaderTemplate>
                <table>
                    <tr>
                        <td>Employee ID
                        </td>
                        <td>First Name
                        </td>
                        <td>Last Name
                        </td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>

                <tr>
                    <td>
                        <%#: Item.EmployeeID %>
                    </td>
                    <td>
                        <%#: Item.FirstName %>
                    </td>
                    <td>
                        <%#: Item.LastName %>
                    </td>
                </tr>

            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>

        </asp:Repeater>

    </form>
</body>
</html>
