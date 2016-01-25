using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Todo.Web
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=TodoDbase;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
           
        }
    }
}