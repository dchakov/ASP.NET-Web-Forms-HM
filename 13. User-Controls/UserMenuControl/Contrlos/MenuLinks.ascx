<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MenuLinks.ascx.cs"
    Inherits="UserMenuControl.Contrlos.MenuLinks" %>

<ul class="nav nav-pills nav-stacked">
    <asp:DataList runat="server" ID="DataListLinks">
        <ItemTemplate>
            <a class="list-group-item" href="<%#: Eval("Url") %>" style='color: <%#: Eval("FontColor") %>' target="_blank">
                <%#: Eval("Title") %> 
            </a>
        </ItemTemplate>
    </asp:DataList>
</ul>
