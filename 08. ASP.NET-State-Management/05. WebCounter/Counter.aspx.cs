using System;
using System.Drawing;
using System.Drawing.Imaging;

namespace _05.WebCounter
{
    public partial class Counter : System.Web.UI.Page
    {
        public int? Visitors
        {
            get
            {
                return (int)this.Application["visitors"];
            }

            set
            {
                this.Application["visitors"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Application["visitors"] == null)
            {
                this.Visitors = 0;
            }

            this.Visitors++;
        }

        protected override void OnPreRender(EventArgs e)
        {
            Bitmap generatedImage = new Bitmap(100, 100);
            using (generatedImage)
            {
                Graphics gr = Graphics.FromImage(generatedImage);
                using (gr)
                {
                    gr.FillRectangle(Brushes.HotPink, 0, 0, 250, 250);
                    gr.DrawString(
                        this.Visitors.ToString(),
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