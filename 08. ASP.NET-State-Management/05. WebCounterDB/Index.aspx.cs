using _05.WebCounterDB.Data;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _05.WebCounterDB
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VisitorDbContext data = new VisitorDbContext();
            data.Visitors.Add(new Visitor());
            data.SaveChanges();

            var count = data.Visitors.Count();

            Bitmap generatedImage = new Bitmap(100, 100);
            using (generatedImage)
            {
                Graphics gr = Graphics.FromImage(generatedImage);
                using (gr)
                {
                    gr.FillRectangle(Brushes.HotPink, 0, 0, 250, 250);
                    gr.DrawString(
                       count.ToString(),
                        new Font("Times New Roman", 50),
                        new SolidBrush(Color.Green),
                        new Point(10, 10));

                    // Set response header and write the image into response stream
                    Response.ContentType = "image/jpeg";

                    //Response.AppendHeader("Content-Disposition",
                    //    "attachment; filename=\"Financial-Report-April-2013.gif\"");

                    generatedImage.Save(Response.OutputStream, ImageFormat.Jpeg);
                }
            }
        }
    }
}