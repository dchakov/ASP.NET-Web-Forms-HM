using System;
using System.Collections.Generic;

namespace _04.ViewState
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (ViewState["values"] == null)
            {
                ViewState.Add("values", new List<string>());
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            var list = (List<string>)ViewState["values"];
            list.Add(this.TextBoxInput.Text);
            this.LabelOutput.Text = string.Empty;
            foreach (var item in list)
            {
                this.LabelOutput.Text += "<br/>" + item;
            }
            this.TextBoxInput.Text = string.Empty;
        }
    }
}