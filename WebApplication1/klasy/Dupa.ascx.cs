using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.klasy
{
    public partial class Dupa : System.Web.UI.UserControl
    {
        private string _id_obiektu;
        public string Id_obiektu
        {
            get
            {
               // _id_obiektu = (int)ViewState["Id_obiektu"];
                return _id_obiektu;
            }
            set
            {
               // ViewState["Id_obiektu"] = value;
                _id_obiektu =  value ;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Text = "duuuuuupa";

        }

    }
}