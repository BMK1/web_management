using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pm_web.manager
{
    public partial class adver : System.Web.UI.Page
    {
        public object Image2 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            


            get1();
           

        }
        public void get1()
        {
            
            string CS = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand com = new SqlCommand("select report,[image_pm],[Order],titel from manager where [Order]=1 ", con);
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(com);

                con.Open();
                da.Fill(dt);
                if (dt.Rows.Count > 0 && dt.Rows[0][0] != string.Empty)
                {
                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();
                    //Repeater2.DataSource = dt;
                    //Repeater2.DataBind();




                }
                else
                {
                    Repeater1.DataSource = null;
                    Repeater1.DataBind();
                    //Repeater2.DataSource = null;
                    //Repeater2.DataBind();


                }

            }
        }
    }
}