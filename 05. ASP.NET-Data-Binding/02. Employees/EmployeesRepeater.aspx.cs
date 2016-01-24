using System;
using System.Linq;

namespace _02.Employees
{
    public partial class EmployeesRepeater : System.Web.UI.Page
    {
        private NorthwindEntities context = new NorthwindEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.IsPostBack)
            {
                return;
            }

            this.RepeaterEmployees.DataSource = this.context.Employees.ToList();
            this.RepeaterEmployees.DataBind();
        }
    }
}