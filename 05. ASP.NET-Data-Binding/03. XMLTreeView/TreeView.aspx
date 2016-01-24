<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TreeView.aspx.cs" Inherits="_03.XMLTreeView.TreeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TreeView</title>
</head>
<body>
    <form id="formMain" runat="server">
        <h3>TreeView XML Data</h3>
        <asp:TreeView ID="TreeViewBookStore" runat="server"
            DataSourceID="BookXmlDataSource" OnTreeNodeCollapsed="TreeViewBookStore_TreeNodeCollapsed" 
            SelectedNodeStyle-BackColor="Pink">

            <DataBindings>
                <asp:TreeNodeBinding DataMember="Book" TextField="Title" />
                <asp:TreeNodeBinding DataMember="Chapter" TextField="Heading" />
                <asp:TreeNodeBinding DataMember="Section" TextField="Heading" />
            </DataBindings>
        </asp:TreeView>
        
        <asp:XmlDataSource ID="BookXmlDataSource"
            DataFile="book-store.xml"
            runat="server"></asp:XmlDataSource>

    </form>
</body>
</html>
