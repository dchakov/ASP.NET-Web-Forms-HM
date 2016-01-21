<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" 
    Inherits="_02.InternationalCompany.MainPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <h2>Welcome to our company</h2>
    <p>Please choose your language</p>
    <asp:HyperLink runat="server" NavigateUrl="~/Germany/GermanyHome.aspx" 
        Text="" CssClass="germany-icon"/>
    <asp:HyperLink runat="server" NavigateUrl="~/UK/UKHome.aspx"
         Text="" CssClass="uk-icon"/>
    <asp:HyperLink runat="server" NavigateUrl="~/Bulgaria/Home.aspx"
         Text="" CssClass="bg-icon"/>
</asp:Content>
