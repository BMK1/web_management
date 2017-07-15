using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pm_web
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;


            string sql = "select * from login_inf where username=@email and password=@pass";
            using (SqlConnection cn = new SqlConnection(s))
            {

                SqlCommand cmd = new SqlCommand(sql, cn);
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
                SqlDataReader r;
                cn.Open();
                r = cmd.ExecuteReader();
                if (r.HasRows)
                {
                    string user_type = "";
                    while (r.Read())
                    {
                       Session["login_inf"] = r["id"].ToString();
                        user_type = r["id_type"].ToString();
                    }

                    if (user_type == "1")
                    {
                        Response.Redirect("Admin1/WebForm1.aspx");
                    }
                    else if (user_type == "2")
                    {
                        Response.Redirect("manager/adver.aspx");
                    }
                    else if (user_type == "3")
                    {
                        Response.Redirect("medial_manger/adver2.aspx");
                    }
                    else if (user_type == "4")
                    {
                        Response.Redirect("operaion/advertising.aspx");
                    }

                }

                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Error in the login information";

                }
            }
        }
    }
}
