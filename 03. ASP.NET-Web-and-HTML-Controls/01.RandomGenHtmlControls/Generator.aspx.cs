using System;

namespace RandomGenHtmlControls
{
    public partial class Generator : System.Web.UI.Page
    {
        private readonly Random rand = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonSubmit_ServerClick(object sender, EventArgs e)
        {
            int lower = int.Parse(this.lowerBoundary.Value);
            int upper = int.Parse(this.upperBoundary.Value);

            if (lower > upper)
            {
                this.textField.InnerText = "minValue cannot be greater than maxValue.";
                return;
            }
            this.textField.InnerText = "Random: " + this.rand.Next(lower, upper).ToString();
        }
    }
}