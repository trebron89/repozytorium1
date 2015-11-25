using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.klasy
{
    public class LinkButtonNEW : LinkButton
    {
        private int _id_obiektu;
         public int Id_obiektu
        {
            get { return _id_obiektu; }
            set { _id_obiektu = (value!=null)?value:0; }
        }
        LinkButtonNEW() { }
    }
}