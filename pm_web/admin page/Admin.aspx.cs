using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace pm_web
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Server=DESKTOP-85FTK9E\\MAR;DataBase=pm;Integrated Security=true;");
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["login_inf"] == null)
            //{
            //    Session["i"] = (int)Session["i"] + 1;

            //    Response.Redirect("~/login.aspx");

            //    if ((int)Session["i"] == 4)
            //    {
            //        Response.Redirect("general/WebForm1.aspx");

            //    }
            }

      

       

        protected void Button2_Click(object sender, EventArgs e)
        {
 Random rn = new Random();
        Textpas.Text = rn.Next(100, 1000000999).ToString();
        String sql = "insert into login_inf (username,password,id_type)values(@username,@password,@id_type)";
        cmd = new SqlCommand(sql, cn);
        cmd.Parameters.AddWithValue("@username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@password", Textpas.Text);
        cmd.Parameters.AddWithValue("@id_type", DropDownList1.SelectedValue);

        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();
        Label1.Visible = true;
        Label1.Text = "It has been added successfully";
        TextBox2.Text = "Hi, " + GridView1.SelectedRow.Cells[3].Text + "\n Thank you for rigster in our page \n The Username : " + TextBox1.Text + "\n Password : " + Textpas.Text;
        Button3.Visible = true;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
 // Specify the from and to email address
        MailMessage mailMessage = new MailMessage("mah96an@gmail.com", GridView1.SelectedRow.Cells[4].Text);
        // Specify the email body
        mailMessage.Body = TextBox2.Text;
        // Specify the email Subject
        mailMessage.Subject = "Rigestered";

        // Specify the SMTP server name and post number
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
        // Specify your gmail address and password
        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "mah96an@gmail.com",
            Password = "199652qwertyuiopam"
        };
        // Gmail works on SSL, so set this property to true
        smtpClient.EnableSsl = true;
        // Finall send the email message using Send() method
        ServicePointManager.SecurityProtocol = SecurityProtocolType.Ssl3 | SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11 | SecurityProtocolType.Tls;
        smtpClient.Send(mailMessage);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
TextBox1.Visible = true;
        Textpas.Visible = true;
        Button2.Visible = true;
        DropDownList1.Visible = true;

        TextBox2.Text = "Hi " + GridView1.SelectedRow.Cells[3].Text + " Thank you for rigster in our page The Username : " + TextBox1.Text + "Password : " + Textpas.Text;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }



   
    }

   

    

  

   

   

