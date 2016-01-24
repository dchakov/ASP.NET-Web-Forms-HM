using System;
using System.Collections.Generic;
using System.Linq;

namespace _02.Employees
{
    public partial class Employees : System.Web.UI.Page
    {
        private NorthwindEntities context = new NorthwindEntities();
        private List<Employee> list;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.IsPostBack)
            {
                return;
            }

            list = (from p in context.Employees
                       orderby p.EmployeeID
                       select p).ToList();

            this.GridViewEmployees.DataSource = list;
            this.GridViewEmployees.DataBind();
        }
    }
}