namespace _03.RegistrationForm
{
    using System;
    using System.Text;
    using System.Web.UI;
    using System.Web.UI.WebControls;

    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder textBoxesText = new StringBuilder();
            textBoxesText.Append("<h3>Registered student: stringbuilder</h3>");
            textBoxesText.Append(this.Label1.Text + ": " + this.TextBoxFirstName.Text);
            textBoxesText.Append("<br />");
            textBoxesText.Append(this.Label2.Text + ": " + this.TextBoxLastName.Text);
            textBoxesText.Append("<br />");
            textBoxesText.Append(this.Label3.Text + ": " + this.TextBoxFacultyNumber.Text);
            textBoxesText.Append("<br />");
            textBoxesText.Append(this.Label4.Text + ": " + this.DropDownListUniversities.SelectedValue);
            textBoxesText.Append("<br />");
            textBoxesText.Append(this.Label5.Text + ": " + this.DropDownListSpecialties.SelectedValue);
            textBoxesText.Append("<br />");
            textBoxesText.Append(this.Label6.Text + ": ");
            foreach (ListItem item in ListBoxCourses.Items)
            {
                if (item.Selected)
                {
                    textBoxesText.Append(item.Value);
                    textBoxesText.Append(", ");
                }
            }
            textBoxesText.Append("<br />");

            this.PlaceHolderStudent.Controls.Add(new LiteralControl(textBoxesText.ToString()));

            this.PanelStudent.Controls.Add(new LiteralControl("<h3>Registered student: dynamic</h3>"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label1.Text + ": " + this.TextBoxFirstName.Text));
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label2.Text + ": " + this.TextBoxLastName.Text));
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label3.Text + ": " + this.TextBoxFacultyNumber.Text));
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label4.Text + ": " + this.DropDownListUniversities.SelectedValue));
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label5.Text + ": " + this.DropDownListSpecialties.SelectedValue));
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
            this.PanelStudent.Controls.Add(new LiteralControl(this.Label6.Text + ": "));
            foreach (ListItem item in ListBoxCourses.Items)
            {
                if (item.Selected)
                {
                    this.PanelStudent.Controls.Add(new LiteralControl(item.Value + ", "));
                }
            }
            this.PanelStudent.Controls.Add(new LiteralControl("<br />"));
        }
    }
}