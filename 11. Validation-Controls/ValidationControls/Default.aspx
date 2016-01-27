<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationControls._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="form-horizontal">
        <fieldset>
            <legend>Register Form</legend>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger alert alert-danger" />
            <asp:Label runat="server" ID="LabelMessage" CssClass="alert alert-success" Visible="False"></asp:Label>
            <div class="form-group">
                <label class="col-lg-2 control-label" for="TextBoxUsername">Username</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="text" class="form-control" ID="TextBoxUsername" placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="TextBoxUsername"
                        CssClass="text-danger" ErrorMessage="The username name field is required." />
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 control-label" for="TextBoxFirstName">First Name</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="text" class="form-control" ID="TextBoxFirstName" placeholder="First Name"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" runat="server" ControlToValidate="TextBoxFirstName"
                        CssClass="text-danger" ErrorMessage="The first name field is required." />
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-2 control-label" for="TextBoxLastName">Last Name</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="text" class="form-control" ID="TextBoxLastName" placeholder="Last Name"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="TextBoxLastName"
                        CssClass="text-danger" ErrorMessage="The last name field is required."></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="TextBoxAge" class="col-lg-2 control-label">Age</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="number" class="form-control" ID="TextBoxAge" placeholder="21"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="TextBoxAge"
                        CssClass="text-danger" ErrorMessage="The age field is required."></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorAge" runat="server" Display="Dynamic"
                        ControlToValidate="TextBoxAge" Type="Integer" MinimumValue="18" MaximumValue="81"
                        ErrorMessage="Age value must be between 18 and 81" CssClass="text-danger"></asp:RangeValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="TextBoxEmail" class="col-lg-2 control-label">Email</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="email" class="form-control" ID="TextBoxEmail" placeholder="sample@mail.com"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="TextBoxEmail"
                        CssClass="text-danger" ErrorMessage="The email field is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxEmail"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ErrorMessage="Invalid Email Format" Display="Dynamic"
                        CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="TextBoxAddress" class="col-lg-2 control-label">Local Address</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="text" class="form-control" ID="TextBoxAddress" placeholder="bul. Bulgaria 21"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="TextBoxAddress"
                        CssClass="text-danger" ErrorMessage="The address field is required."></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="TextBoxPhone" class="col-lg-2 control-label">Phone number</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="text" class="form-control" ID="TextBoxPhone" placeholder="0899999888"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="TextBoxPhone"
                        CssClass="text-danger" ErrorMessage="The phone number field is required."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="TextBoxPhone"
                        ValidationExpression="08[7-9][0-9]{7}"
                        ErrorMessage="Invalid Phone number format" Display="Dynamic"
                        CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="password" class="form-control" ID="inputPassword" TextMode="Password" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="inputPassword"
                        CssClass="text-danger" ErrorMessage="The password field is required."></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="inputPasswordConfirm" class="col-lg-2 control-label">Confirm Password</label>
                <div class="col-lg-10">
                    <asp:TextBox runat="server" type="password" class="form-control" ID="inputPasswordConfirm" placeholder="Confirm Password"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" Display="Dynamic" ControlToValidate="inputPasswordConfirm"
                        CssClass="text-danger" ErrorMessage="The password field is required."></asp:RequiredFieldValidator>
                    <asp:CompareValidator runat="server" ControlToCompare="inputPassword" ControlToValidate="inputPasswordConfirm"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match."></asp:CompareValidator>
                </div>
            </div>
            <div class="form-group">
                <label for="iAccept" class="col-lg-2 control-label">I accept</label>
                <div class="col-lg-10">
                    <asp:CheckBox ID="iAccept" runat="server" />
                    <asp:CustomValidator ID="CustomValidator1" ErrorMessage="Please accept the terms..." Display="Dynamic"
                        CssClass="text-danger" OnServerValidate="CustomValidator1_ServerValidate" runat="server" />
                </div>
            </div>

            <div class="form-group">
                <label for="Gender" class="col-lg-2 control-label">Gender</label>
                <div class="col-lg-10">
                    <asp:UpdatePanel ID="UpdatePanelGender" runat="server" class="panel"
                        UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:RadioButton ID="RadioButtonMale" runat="server" AutoPostBack="True"
                                Text="Male" OnCheckedChanged="RadioButtonMale_CheckedChanged"
                                GroupName="GroupGender" />
                            <asp:RadioButton ID="RadioButtonFemale" runat="server" AutoPostBack="True"
                                Text="Female" OnCheckedChanged="RadioButtonFemale_CheckedChanged"
                                GroupName="GroupGender" />
                        </ContentTemplate>
                    </asp:UpdatePanel>

                    <asp:UpdatePanel ID="UpdatePanelCarsCoffees" runat="server">
                        <ContentTemplate>
                            <asp:Panel ID="PanelCars" runat="server" Visible="false" class="panel">
                                Select your favorite cars:<br />
                                <asp:CheckBoxList ID="CheckBoxListCars" runat="server" AutoPostBack="True"
                                    OnSelectedIndexChanged="CheckBoxListCars_SelectedIndexChanged">
                                    <asp:ListItem Text="Audi" />
                                    <asp:ListItem Text="BMW" />
                                    <asp:ListItem Text="Toyota" />
                                </asp:CheckBoxList>
                            </asp:Panel>
                            <asp:Panel ID="PanelCoffees" runat="server" Visible="false" class="panel">
                                Select your favorite coffee:<br />
                                <asp:DropDownList ID="DropDownListCoffees" AutoPostBack="True"
                                    OnSelectedIndexChanged="DropDownListCoffees_SelectedIndexChanged" runat="server">
                                    <asp:ListItem Text="Lavazza" />
                                    <asp:ListItem Text="New Brazil" />
                                    <asp:ListItem Text="Mocka" />
                                </asp:DropDownList>
                            </asp:Panel>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>


            <div class="form-group">
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="ButtonRegister" runat="server" Text="Register"
                        OnClick="ButtonRegister_Click" CssClass="btn btn-primary" />
                    <button class="btn btn-default">Cancel</button>
                </div>
            </div>
        </fieldset>
    </div>

</asp:Content>
