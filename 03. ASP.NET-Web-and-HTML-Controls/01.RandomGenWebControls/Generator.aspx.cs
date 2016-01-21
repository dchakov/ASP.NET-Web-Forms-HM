using System;

namespace _01.RandomGenWebControls
{
    public partial class Generator : System.Web.UI.Page
    {
        private readonly Random rand = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int lower = int.Parse(this.LowerBoundary.Text);
            int upper = int.Parse(this.UpperBoundary.Text);

            if (lower > upper)
            {
                this.Result.Text = "minValue cannot be greater than maxValue.";
                return;
            }
            this.Result.Text = "Random number: " + this.rand.Next(lower, upper).ToString();
        }
    }
}