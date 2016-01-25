using System;
using System.Web;

namespace _01.BrowserAndId
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.LabelBrowser.Text = this.Request.Browser.Browser;
            this.LabelIpAddress.Text = HttpContext.Current.Request.UserHostAddress;

        }
    }
}