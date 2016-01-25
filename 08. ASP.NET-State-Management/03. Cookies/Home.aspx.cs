using System;
using System.Web;

namespace _03.Cookies
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["UserName"];

            if (cookie!=null)
            {
                this.LiteralLogIn.Text = "Hello, " + cookie.Value;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}