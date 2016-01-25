<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FileSystem.Web._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/kendo/2014.2.716/kendo.common.min.css" rel="stylesheet" />
    <link href="Content/kendo/2014.2.716/kendo.black.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/kendo/2014.2.716/kendo.web.min.js"></script>
</head>
<body>
   
    <section>
        <p class="alert alert-warning">You can find sample zip files in Sample Data Folder</p>
        <input name="uploaded" id="uploaded" type="file" runat="server" />
        <a runat="server" href="~/">Click to see content</a>
        <asp:Repeater runat="server" ID="RepeaterContent" ItemType="FileSystem.Models.FileContent">
            <HeaderTemplate>
                <div class="panel panel-primary col-md-6 col-md-offset-3">
                    <div class="panel-heading">
                        <h3 class="panel-title">Uploaded text</h3>
                    </div>
                    <div class="panel-body">
                        <ul class="list-group ">
            </HeaderTemplate>
            <ItemTemplate>
                <li class="list-group-item"><%#: Item.Content %></li>
            </ItemTemplate>
            <FooterTemplate>
                </ul>
                 </div>
            </div>
            </FooterTemplate>
        </asp:Repeater>
    </section>
    <footer class="navbar navbar-fixed-bottom">
        <p>&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
    </footer>
    <script>
        $(document).ready(function () {
            $("#uploaded").kendoUpload({
                async: {
                    saveUrl: "Upload",
                    autoUpload: false
                }
            });
        });
    </script>
</body>
</html>
