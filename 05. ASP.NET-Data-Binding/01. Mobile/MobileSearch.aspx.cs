using System;
using System.Collections.Generic;
using System.Text;

namespace _01.Mobile
{
    public partial class MobileSearch : System.Web.UI.Page
    {

        private List<Producer> producers = new List<Producer>
        {
            new Producer() { Name="All", Models=new List<string> (){ "All" } },
            new Producer() { Name="BMW", Models=new List<string> (){ "320", "520", "525" } },
            new Producer() { Name="VW", Models=new List<string> (){ "S1", "S2", "S3" } },
            new Producer() { Name="Audi", Models=new List<string> (){ "Q8", "Q4", "Q2" } }

        };

        private List<Extra> extras = new List<Extra>()
        {
            new Extra() { Name="Navigation system" },
            new Extra() { Name="Steptronic, Tiptronic" },
            new Extra() { Name="USB, audio/video, IN/AUX" },
            new Extra() { Name="DVD, TV" }

        };

        private List<string> typeOfEngine = new List<string>()
        {
            "All",
            "Diesel",
            "Petrol",
            "Electrical",
            "Hybrid"
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                return;
            }

            this.DropDownListProducers.DataSource = this.producers;
            this.DropDownListProducers.DataBind();

            this.DropDownListModel.DataSource = this.producers[0].Models;
            this.DropDownListModel.DataBind();

            this.CheckBoxListExtras.DataSource = this.extras;
            this.CheckBoxListExtras.DataBind();

            this.RadioButtonListEngine.DataSource = this.typeOfEngine;
            this.RadioButtonListEngine.DataBind();
            this.RadioButtonListEngine.SelectedIndex = 0;
        }

        protected void DropDownListProducers_SelectedIndexChanged(object sender, EventArgs e)
        {
            var selectedProducer = this.producers[this.DropDownListProducers.SelectedIndex];
            this.DropDownListModel.DataSource = selectedProducer.Models;
            this.DropDownListModel.DataBind();
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder result = new StringBuilder();
            string producer = this.DropDownListProducers.SelectedValue;
            result.AppendLine(
                "Producer: <b>" + Server.HtmlEncode(producer) + "</b><br/>");
            string model = this.DropDownListModel.SelectedValue;
            result.AppendLine(
                "Model: <b>" + Server.HtmlEncode(model) + "</b><br/>");
            for (int i = 0; i < CheckBoxListExtras.Items.Count; i++)
            {
                if (CheckBoxListExtras.Items[i].Selected)
                {
                    string extra = CheckBoxListExtras.Items[i].Text;
                    result.AppendLine(
                        "Extra: <b>" + Server.HtmlEncode(extra) + "</b><br/>");
                }
            }
            string engine = RadioButtonListEngine.SelectedItem.Text;
            result.AppendLine(
                "Engine: <b>" + Server.HtmlEncode(engine) +"</b><br/>");

            this.LiteralSubmit.Visible = true;
            this.LiteralSubmit.Text = result.ToString();
        }
    }
}