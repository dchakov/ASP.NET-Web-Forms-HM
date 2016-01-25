using System;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace World.Web
{
    public partial class ImageHandler : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=World;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["image"] != null)
            {
                SqlDataAdapter adp = new SqlDataAdapter("select * from Countries where id=@id", con);
                adp.SelectCommand.Parameters.AddWithValue("@id", Convert.ToInt32(Request.QueryString["image"]));
                DataTable dt = new DataTable();
                adp.Fill(dt);
                if (dt != null)
                {
                    Byte[] bytes = (Byte[])dt.Rows[0]["Image"];
                    Response.Buffer = true;
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite(bytes);
                    Response.Flush();
                    Response.End();
                }
            }
        }
    }
}