<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeesListView.aspx.cs" Inherits="_02.Employees.EmployeesListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListViewEmployees" runat="server" ItemType="_02.Employees.Employee">
            <LayoutTemplate>
                <h3>Employees</h3>
                <asp:PlaceHolder runat="server" ID="itemPlaceholder"></asp:PlaceHolder>
            </LayoutTemplate>
            <ItemSeparatorTemplate>
                <hr />
            </ItemSeparatorTemplate>

            <ItemTemplate>
                <div class="employee-description">
                    <h4><%#: Item.FirstName + " " + Item.LastName %></h4>
                    <p>City: <%#: Item.City %></p>
                    <asp:Image ID="ImageEmpl" ImageUrl='<%# "data:image/png;base64," + Convert.ToBase64String((byte[])Eval("Photo")) %>' runat="server" Width="75" Height="75" />
                </div>
            </ItemTemplate>
        </asp:ListView>
        <asp:DataPager ID="DataPagerEmployee" runat="server"
            PagedControlID="ListViewEmployees" PageSize="3"
            QueryStringField="page">
            <Fields>
                <asp:NextPreviousPagerField ShowFirstPageButton="true"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ShowLastPageButton="true"
                    ShowNextPageButton="false" ShowPreviousPageButton="false" />
            </Fields>
        </asp:DataPager>
    </form>
</body>
</html>
