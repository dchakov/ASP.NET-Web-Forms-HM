using System;
using System.Collections.Generic;

namespace _02.Session
{
    public partial class Index : System.Web.UI.Page
    {
        public List<string> Output
        {
            get
            {
                return (List<string>)this.Session["Output"];
            }

            set
            {
                this.Session["Output"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Output == null)
            {
                this.Output = new List<string>();
            }
            else
            {
                this.LabelOutput.Text = string.Empty;
                foreach (var item in this.Output)
                {
                    this.LabelOutput.Text += item + "<br/>";
                }
            }
        }


        protected void ButtonSubmmit_Click(object sender, EventArgs e)
        {
            var text = this.TextBoxInput.Text;
            this.Output.Add(text);
            this.TextBoxInput.Text = string.Empty;
            this.LabelOutput.Text = string.Empty;

            foreach (var item in this.Output)
            {
                this.LabelOutput.Text += item + "<br/>";
            }
        }
    }
}