using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace pm_web.manager
{
    public partial class reports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                // Get the file extension
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension !=".jpg" && fileExtension != ".png")
                { 
                   lblMessage.ForeColor = System.Drawing.Color.Red;
                    lblMessage.Text = "Only files with .png and .jpg extension are allowed";
                }


                else
                {FileUpload1.SaveAs(Server.MapPath("~/Uploads/" + FileUpload1.FileName));
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    lblMessage.Text = "File uploaded successfully";
                    string p= "~/Uploads/";
                    Image1.ImageUrl= (p + FileUpload1.FileName);
                    Label1.Text = p + FileUpload1.FileName;
                    // Upload the file

                    string st = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;
                    using (SqlConnection cn = new SqlConnection(st))
                    {
                        string sql = "insert into manager (name,report,image_pm,[Order],[The ratio]) values(@name,@report,@image,@order,@ry)";
                        SqlCommand cmd = new SqlCommand(sql, cn);
                        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                        cmd.Parameters.AddWithValue("@report", TextBox2.Text);
                        cmd.Parameters.AddWithValue("@image", Label1.Text);
                        cmd.Parameters.AddWithValue("@ry", TextBox3.Text);
                        cmd.Parameters.AddWithValue("@order", 1);

                        cn.Open();
                        cmd.ExecuteNonQuery();
                        Label2.Visible = true;
                    }
                }
            }


            else
            {
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Text = "Please select a file";
            }







            }
        }
    } 

       
    
    
