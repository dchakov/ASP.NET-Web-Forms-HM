namespace Escaping
{
    using System;

    public partial class Escaping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonShowText_Click(object sender, EventArgs e)
        {
            string enteredText = Server.HtmlEncode(this.TextBoxText.Text);
            this.TextBoxResult.Text = enteredText;
            this.LabelResult.Text = enteredText;
        }
    }
}