using System;
using System.Web.UI;

namespace ValidationControls
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                this.LabelMessage.Text = "The form is valid!";
            }

            this.LabelMessage.Visible = Page.IsValid;
        }

        protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = this.iAccept.Checked;
        }

        protected void RadioButtonMale_CheckedChanged(object sender, EventArgs e)
        {
            this.PanelCars.Visible = true;
            this.PanelCoffees.Visible = false;
        }

        protected void RadioButtonFemale_CheckedChanged(object sender, EventArgs e)
        {
            this.PanelCoffees.Visible = true;
            this.PanelCars.Visible = false;
        }

        protected void CheckBoxListCoffees_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBoxListCars_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListCoffees_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}