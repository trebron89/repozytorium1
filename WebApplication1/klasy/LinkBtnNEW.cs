using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.klasy
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:LinkBtnNEW runat=server></{0}:LinkBtnNEW>")]
    public class LinkBtnNEW : LinkButton
    {



        //public string Text
        //{
        //    get
        //    {
        //        String s = (String)ViewState["Text"];
        //        return ((s == null) ? String.Empty : s);
        //    }

        //    set
        //    {
        //        ViewState["Text"] = value;
        //    }
        //}
        private int _id_obiektu;
        [Bindable(false)]
        [Category("Appearance")]
        [DefaultValue(null)]
        [Localizable(true)]
        public int Id_obiektu
        {
            get
            {
               // _id_obiektu = (int)ViewState["Id_obiektu"];
                return _id_obiektu;
            }
            set
            {
                //ViewState["Id_obiektu"] = value;
                _id_obiektu =  value ;
            }
        }
        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(Text);
        }
    }
}
