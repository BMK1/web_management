using System;
using System.Configuration;
using System.Data.SqlClient;
namespace pm_web.admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 
            string s = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;
try {
            using (SqlConnection cn = new SqlConnection(s))
            {
                string sql = "insert into register (name,phone,email,certificate,manager_type,expeirence_years,gender_id,ch)  values(@name,@phone,@email,@certificate,@managment_type,@expierence_years,@gender_id,@ch)";
                SqlCommand cmd = new SqlCommand(sql, cn);
                
              cmd.Parameters.AddWithValue("@name", username.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@certificate", DropDownList2.SelectedValue);
                cmd.Parameters.AddWithValue("@managment_type", DropDownList1.SelectedValue);
                cmd.Parameters.AddWithValue("@gender_id", DropDownList3.SelectedValue);
                cmd.Parameters.AddWithValue("@expierence_years", expierence.Text);
                    cmd.Parameters.AddWithValue("@ch", 0);
                    cn.Open();
                cmd.ExecuteNonQuery();

                Label1.Visible = true;

            }}
            catch(Exception e1)
            {

            }

           
        }
    }
}