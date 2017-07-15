using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pm_web.operaion
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;

            using (SqlConnection cn = new SqlConnection(s))
            {
                string sql = "insert into functional(name,report) values (@name,@report)";
                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@report", TextBox2.Text);
                cn.Open();
                cmd.ExecuteNonQuery();

                Label1.Visible = true;
                Label1.Text = "Send is done seccessfully";
                TextBox2.Text = "";
                TextBox1.Text = "";



            }
        }
    }
}