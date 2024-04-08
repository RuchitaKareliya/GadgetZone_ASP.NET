using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace gadgetzone.admin
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //SqlCommand cmd = new SqlCommand("select * from admin_login where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
            //cn.Open();
            //SqlDataReader dr = cmd.ExecuteReader();
            //if (dr.Read())
            //{
            //    Session["kruser"] = TextBox1.Text;
            //    Response.Redirect("index.aspx");
            //    Session.RemoveAll();
            //}
            //else
            //{
            //    Response.Write("<script>alert ('First fill the registration from first ')</script>");
            //}

            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from admin_login where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["kruser"] = dt.Rows[0].ItemArray[0].ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert ('Please enter Correct username and password')</script>");
            }

        }
    }
}