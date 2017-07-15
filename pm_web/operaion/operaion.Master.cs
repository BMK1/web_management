using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pm_web.operaion
{
    public partial class operaion : System.Web.UI.MasterPage
    {public int i ;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login_inf"] == null)
            {

                Response.Redirect("~/login.aspx");
                i = i + 1;
                if (i == 4)
                {
                    Response.Redirect("general/WebForm1.aspx");

                }
            }
        }
    }
}