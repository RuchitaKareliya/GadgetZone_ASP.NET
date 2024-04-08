using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace gadgetzone
{
    public partial class contactus : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();

            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                TextBox1.Text = Session["email"].ToString();
            }

            cn.Close();
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            cn.Open();
            string cdata = "insert into contactus values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            cmd = new SqlCommand(cdata, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            //Response.Redirect("Login.aspx");
            Response.Write("inserted");
        }
    }
}