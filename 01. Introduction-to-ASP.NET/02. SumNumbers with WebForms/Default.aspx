<%@ Page Title="Home Page" Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Default.aspx.cs"
    Inherits="_02.SumNumbers_with_WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Sum calculator</h3>
    <label>First number:</label>
    <asp:TextBox ID="TextBoxFirstNumber" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <label>Second number:</label>
    <asp:TextBox ID="TextBoxSecondNumber" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="ButtonCalculateSum" runat="server" Text="Sum numbers" OnClick="ButtonCalculateSum_Click" CssClass="btn" />
    <br />
    <br />
    <label>Result:</label>
    <asp:TextBox ID="TextBoxSum" runat="server"></asp:TextBox>
    <br />

</asp:Content>

