using FileSystem.Data;
using System;
using System.Web.UI;
using System.Linq;

namespace FileSystem.Web
{
    public partial class _Default : Page
    {
        private readonly FileSystemDbContext data = new FileSystemDbContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            this.RepeaterContent.DataSource = this.data.FileContents.ToList();
            this.RepeaterContent.DataBind();
        }
    }
}