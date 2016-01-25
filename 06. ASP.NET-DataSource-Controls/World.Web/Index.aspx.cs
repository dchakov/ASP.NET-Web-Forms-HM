using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace World.Web
{
    public partial class Index : System.Web.UI.Page
    {
        WorldEntities data = new WorldEntities();

        private List<Country> countries = new List<Country>();

        protected void Page_Load(object sender, EventArgs e)
        {
            //foreach (var item in this.data.Countries.ToList())
            //{
            //    byte[] photo = item.Image;
            //    if (photo == null)
            //    {
            //        continue;
            //    }
            //    MemoryStream ms = new MemoryStream();
            //    ms.Write(photo, 78, photo.Length - 78);
            //    string imageBase64 = Convert.ToBase64String(ms.ToArray());
            //    Country some = new Country()
            //    {
            //        Continent = item.Continent,
            //        ContinentId = item.ContinentId,
            //        Id = item.Id,
            //        Image = ms.ToArray(),
            //        Language = item.Language,
            //        Name = item.Name,
            //        Population = item.Population,
            //        Towns = item.Towns
            //    };

            //    this.countries.Add(some);
            //}

            //this.GridViewCountries.DataSource = this.countries;
            //this.GridViewCountries.DataBind();
        }

        protected void ListBoxContinents_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.GridViewCountries.PageIndex = this.ListBoxContinents.SelectedIndex;
            this.GridViewCountries.DataBind();
        }

        protected void GridViewCountries_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            byte[] fileData = null;
            Stream fileStream = null;
            int length = 0;

            int index = e.RowIndex;
            GridViewRow row = (GridViewRow)GridViewCountries.Rows[index];
            int countryId = int.Parse(row.Cells[1].Text);
            FileUpload fu = (FileUpload)row.FindControl("FileUploadControl");

            if (fu.HasFile)
            {
                length = fu.PostedFile.ContentLength;
                fileData = new byte[length + 1];
                fileStream = fu.PostedFile.InputStream;
                fileStream.Read(fileData, 0, length);

                var country = this.data.Countries.Find(countryId);
                country.Image = fileData;
                this.data.SaveChanges();
                //File.Text = string.Join(" ", fileData);
            }

        }
    }
}