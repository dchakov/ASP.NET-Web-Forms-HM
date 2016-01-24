using System;
using System.Collections.Generic;
using System.Linq;

namespace _02.Employees
{
    public partial class EmpDetails : System.Web.UI.Page
    {
        private NorthwindEntities context = new NorthwindEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            int employeeId;
            if (!int.TryParse(this.Request.Params["id"], out employeeId))
            {
                this.Response.Redirect("Employees.aspx");
            }   

            var employee = this.context.Employees.Find(employeeId);
            if (employee == null)
            {
                this.Response.Redirect("Employees.aspx");
            }

            this.DetailsViewEmployee.DataSource = new List<Employee>() { employee };
            this.DetailsViewEmployee.DataBind();
        }

        protected void ButtonBack_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("Employees.aspx");
        }
    }
}