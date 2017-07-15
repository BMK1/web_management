using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pm_web.operaion
{
    public partial class advertising : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

           get1();
        }
        public void get1()
        {
            string CS = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand com = new SqlCommand("select report,[image_pm],[Order] from manager where [Order]=1 ", con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);

                con.Open();
                da.Fill(dt);
                if (dt.Rows.Count > 0 && dt.Rows[0][0] != string.Empty)
                {
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();



                }
                else
                {
                    Repeater1.DataSource = null;
                    Repeater1.DataBind();



                }

            }
        }
    }
}