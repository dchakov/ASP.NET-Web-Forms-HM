using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.SumNumbers_with_WebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonCalculateSum_Click(object sender, EventArgs e)
        {
            try
            {
                decimal firstNum = Decimal.Parse(this.TextBoxFirstNumber.Text);
                decimal secondNum = Decimal.Parse(this.TextBoxSecondNumber.Text);
                decimal sum = firstNum + secondNum;
                this.TextBoxSum.Text = sum.ToString();
            }
            catch (Exception)
            {
                this.TextBoxSum.Text = "Invalid.";
            }
        }
    }
}