using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Linq;
using WebApplication1.klasy;


namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Samochod wozek = new Samochod();
                RepeaterSamochody.DataSource = wozek.WyswietlListeSamochow();
                RepeaterSamochody.DataBind();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void RepeaterSamochody_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Samochod wozek = e.Item.DataItem as Samochod;

                LinkBtnNEW lbtn = e.Item.FindControl("lbtnMarka") as LinkBtnNEW;
                lbtn.Text = wozek.Marka;
                lbtn.Id_obiektu = 99999;
                lbtn.CssClass = "zorro";
                lbtn.CommandName = "polak";
                lbtn.CommandArgument = wozek.Id.ToString();

                Label lb = e.Item.FindControl("lbModel") as Label;
                lb.Text = wozek.Model;
                lb.CssClass = "zorro";

                lb = e.Item.FindControl("lbCena") as Label;
                lb.Text = wozek.Cena.ToString();
            }
        }

        protected void RepeaterSamochody_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            RepeaterItem ri = null;
            foreach (RepeaterItem ritm in RepeaterSamochody.Items)
            {
                if (e.CommandArgument.ToString() == (((LinkBtnNEW)ritm.FindControl("lbtnMarka")).CommandArgument).ToString())
                    ri = ritm;
            }
            LinkBtnNEW qqqq = null;

            if (e.CommandName == "polak")
            {
                 qqqq = ri.FindControl("lbtnMarka") as LinkBtnNEW;
            }
            Label1.Text = qqqq.Text;
        }
    }
}