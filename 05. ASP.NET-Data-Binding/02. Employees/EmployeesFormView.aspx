<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeesFormView.aspx.cs" Inherits="_02.Employees.EmployeesFormView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="formMain" runat="server">
        <asp:SqlDataSource ID="SqlDataSourceEmployees" runat="server" 
            ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" 
            SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>

         <asp:GridView ID="GridViewEmployees" runat="server" 
             DataSourceID="SqlDataSourceEmployees" 
             AutoGenerateColumns="false" 
             DataKeyNames="EmployeeID"
             AllowPaging="true" AllowSorting="True" 
             OnSelectedIndexChanged="GridViewEmployees_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" />
                <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                <asp:BoundField DataField="LastName" HeaderText="Last Name" />
            </Columns>
        </asp:GridView>

        <h3>Employee details:</h3>
        <asp:FormView ID="FormViewEmployees" runat="server" 
            ItemType="_02.Employees.Employee">
        <ItemTemplate>
            Employee ID: <%#: Item.EmployeeID %> <br />
            First Name: <%#: Item.FirstName %> <br />
            Last Name: <%#: Item.LastName %> <br />
        </ItemTemplate>
        </asp:FormView>

    </form>
</body>
</html>

