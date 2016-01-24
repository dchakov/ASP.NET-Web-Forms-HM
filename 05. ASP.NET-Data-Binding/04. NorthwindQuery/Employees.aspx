<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="_04.NorthwindQuery.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    
</head>
<body>
    <form id="formMain" runat="server">
        <div id="divGrid" style="width: auto; float: left">

            <asp:GridView ID="GridViewEmployees" runat="server"
                DataSourceID="EntityDataSourceEmployees"
                AutoGenerateColumns="False" DataKeyNames="EmployeeID"
                AllowPaging="True" AllowSorting="True" PageSize="5" OnRowDataBound="GridViewEmployees_RowDataBound">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" ReadOnly="True" SortExpression="EmployeeID" />
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                </Columns>
            </asp:GridView>
        </div>
        <div runat="server" id="divDetail" onmouseover="highlight(this, event)"
            onmouseout="highlight(this, event)">
        </div>

        <asp:EntityDataSource ID="EntityDataSourceEmployees" runat="server"
            ConnectionString="name=NorthwindEntities"
            DefaultContainerName="NorthwindEntities"
            EnableFlattening="False"
            EntitySetName="Employees">
        </asp:EntityDataSource>

    </form>
    <script src="scripts/js.js"></script>
</body>
</html>
