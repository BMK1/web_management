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

namespace pm_web
{
    public partial class WebForm1 : System.Web.UI.Page
    { protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = (int)ViewState["ImageDisplayed"];
            i = i + 1;
            ViewState["ImageDisplayed"] = i;

            DataRow imageDataRow = ((DataSet)ViewState["ImageData"]).Tables["manager"].Select().FirstOrDefault(x => x["id"].ToString() == i.ToString());
            if (imageDataRow != null)
            {
                Image1.ImageUrl =  imageDataRow["image_pm"].ToString();
                lblImageName.Text = imageDataRow["image_pm"].ToString();
                //lblImageOrder.Text = imageDataRow["order"].ToString();
            }
            else
            {
                SetImageUrl();
            }
        }

        private void SetImageUrl()
        {
            DataSet ds = new DataSet();
            string CS = ConfigurationManager.ConnectionStrings["pmConnectionString1"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter("select * from manager", con);
            da.Fill(ds);
            ViewState["ImageData"] = ds;
            ViewState["ImageDisplayed"] = 1;

            DataRow imageDataRow = ds.Tables["manager"].Select().FirstOrDefault(x => x["id"].ToString() == "1");
            Image1.ImageUrl =  imageDataRow["image_pm"].ToString();
            lblImageName.Text = imageDataRow["name"].ToString();
            //lblImageOrder.Text = imageDataRow["order"].ToString();
        } 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
          
   

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
 if (Timer1.Enabled)
            {
                Timer1.Enabled = false;
                Button1.Text = "Start Slideshow";
            }
            else
            {
                Timer1.Enabled = true;
                Button1.Text = "Stop Slideshow";
            }
        }}}
        
    
