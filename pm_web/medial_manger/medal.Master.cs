using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Configuration;

using System.Web.UI.WebControls;
using static System.Collections.Specialized.BitVector32;

namespace pm_web.medial_manger
{
    public partial class medal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login_inf"] == null)
            {
                Session["i"] = (int)Session["i"] + 1;

                Response.Redirect("~/login.aspx");

                if ((int)Session["i"] == 4)
                {
                    Response.Redirect("general/WebForm1.aspx");

                }
            }
        }
    }
}