using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02.Employees
{
    public partial class EmployeesFormView : System.Web.UI.Page
    {
        private NorthwindEntities context = new NorthwindEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void GridViewEmployees_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = this.GridViewEmployees.SelectedRow.Cells[1].Text;
            var employee = this.context.Employees.Find(int.Parse(id));

            this.FormViewEmployees.DataSource = new List<Employee>() { employee };
            this.FormViewEmployees.DataBind();
        }
    }
}