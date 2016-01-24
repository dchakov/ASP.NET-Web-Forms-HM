using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _04.NorthwindQuery
{
    public partial class Employees : System.Web.UI.Page
    {
        string sCon = "Data Source=.;Persist Security Info=False;Integrated Security=true;" +
            "Initial Catalog=Northwind;Connect Timeout=30;";

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GridViewEmployees_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //if (e.Row.RowType == DataControlRowType.DataRow)
            //{
            ////    e.Row.Attributes["onmouseover"] = "this.style.backgroundColor='aquamarine';";
            ////    e.Row.Attributes["onmouseout"] = "this.style.backgroundColor='white';";
            //    e.Row.ToolTip = "Click last column for selecting this row.";
            //}

            // BIND DATA WITH EACH ROW.
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                String sDetails = System.String.Empty;
                sDetails = "<span><h3>OTHER DETAILS</h3></span>";

                using (SqlConnection con = new SqlConnection(sCon))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Photo, HomePhone, Address, Notes " +
                        "FROM dbo.Employees WHERE EmployeeID = " +
                            DataBinder.Eval(e.Row.DataItem, "EmployeeID").ToString()))
                    {
                        SqlDataAdapter sda = new SqlDataAdapter();
                        try
                        {
                            cmd.Connection = con;
                            con.Open();
                            sda.SelectCommand = cmd;

                            DataTable dt = new DataTable();
                            sda.Fill(dt);

                            byte[] photo = (byte[])dt.Rows[0]["Photo"];
                            MemoryStream ms = new MemoryStream();
                            ms.Write(photo, 78, photo.Length - 78);
                            string imageBase64 = Convert.ToBase64String(ms.ToArray());

                            if (dt.Rows.Count > 0)
                            {
                                sDetails = sDetails + "<p><strong>Employee Code: </strong>" +
                                    DataBinder.Eval(e.Row.DataItem, "EmployeeID").ToString() + "</p>";
                                sDetails = sDetails + "<p><img src=data:image/png;base64," + HttpUtility.HtmlEncode(imageBase64) + " />";
                                //sDetails = sDetails + "<p><strong>Present Address: </strong>" + Server.HtmlEncode((dt.Rows[0]["Address"]).ToString()) + "</p>";
                                sDetails = sDetails + "<p><strong>HomePhone: </strong>" + HttpUtility.HtmlEncode(dt.Rows[0]["HomePhone"]) + "</p>";
                                sDetails = sDetails + "<p><strong>Notes: </strong>" + HttpUtility.HtmlEncode(dt.Rows[0]["Notes"]) + "</p>";
                                //sDetails = sDetails + "<a href=?id=" +
                                //    DataBinder.Eval(e.Row.DataItem, "EmployeeID").ToString() + " title=Send Mail>Send Mail</a>";

                                // BIND MOUSE EVENT (TO CALL JAVASCRIPT FUNCTION), WITH EACH ROW OF THE GRID.
                                e.Row.Attributes.Add("onmouseover", "MouseEvents(this, event, '" + sDetails + "')");
                                e.Row.Attributes.Add("onmouseout", "MouseEvents(this, event, '" +
                                    DataBinder.Eval(e.Row.DataItem, "EmployeeID").ToString() + "')");
                            }
                        }
                        catch (Exception ex)
                        {

                        }
                    }
                }
            }
        }
    }
}