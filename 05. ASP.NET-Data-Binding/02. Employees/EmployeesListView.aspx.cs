using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web.UI.WebControls;

namespace _02.Employees
{
    public partial class EmployeesListView : System.Web.UI.Page
    {
        private NorthwindEntities context = new NorthwindEntities();
        private List<Employee> empl = new List<Employee>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Page.IsPostBack)
            {
                return;
            }

            foreach (var item in this.context.Employees.ToList())
            {
                byte[] photo = (byte[])item.Photo;
                MemoryStream ms = new MemoryStream();
                ms.Write(photo, 78, photo.Length - 78);
                string imageBase64 = Convert.ToBase64String(ms.ToArray());
                Employee some = new Employee()
                {
                    EmployeeID = item.EmployeeID,
                    Address = item.Address,
                    BirthDate = item.BirthDate,
                    City = item.City,
                    Country = item.Country,
                    FirstName = item.FirstName,
                    Extension = item.Extension,
                    HireDate = item.HireDate,
                    LastName = item.LastName,
                    Photo = ms.ToArray(),
                    HomePhone = item.HomePhone,
                    Employee1 = item.Employee1,
                    Employees1 = item.Employees1,
                    Notes = item.Notes,
                    Orders = item.Orders,
                    TitleOfCourtesy = item.TitleOfCourtesy,
                    PhotoPath = item.PhotoPath,
                    PostalCode = item.PostalCode,
                    Region = item.Region,
                    ReportsTo = item.ReportsTo,
                    Territories = item.Territories,
                    Title = item.Title

                };

                this.empl.Add(some);
            }

            this.ListViewEmployees.DataSource = this.empl;
            this.ListViewEmployees.DataBind();
        }
    }
}