using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace pm_web.medial_manger
{
    public partial class report_middal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow == null)
            {
                DetailsView1.Visible = false;
            }
            else
            {
                DetailsView1.Visible = true;
            }
        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;

            using (SqlConnection cn = new SqlConnection(s))
            {
                string sql = "insert into middle(name,report) values (@name,@report)";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text);
                cmd.Parameters.AddWithValue("@report", TextBox2.Text);
                cn.Open();
                cmd.ExecuteNonQuery();
              
                Label4.Visible = true;
                Label4.Text = "Send is done seccessfully";
                TextBox2.Text = "";
                TextBox3.Text = "";



            }
        }
    }
}