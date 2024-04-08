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
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        //SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //cn.Open();
            //SqlCommand cmd = new SqlCommand("select email,password from registration where email='" + TextBox1.Text.Trim().ToString() + "'and password='" + TextBox2.Text.Trim().ToString() + "'", cn);
            ////SqlDataReader dr = cmd.ExecuteReader();
            ////if (dr.Read())
            //int ans=cmd.ExecuteNonQuery();
            //Response.Write(ans);
            //if(ans>0)
            //{
            //    Session["email"] = TextBox1.Text;
            //    Response.Redirect("index.aspx");
            //    //Session.RemoveAll();
            //}
            //else
            //{
            //    Response.Write("fil the form");
            //   // Response.Write("<script>alert ('First Fill The Registration From First ')</script>");
            //}

            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select * from registration where email='" + TextBox1.Text + "'and password='" + TextBox2.Text + "'", cn);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["email"] = TextBox1.Text; /*dt.Rows[0].ItemArray[0].ToString();*/
                
                Response.Redirect("index.aspx");
                Response.Write("Welcome");
                Session.RemoveAll();
            }
            else
            {
                Response.Write("<script>alert ('First fill the registration from first ')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("registration.aspx");
        }
    }
}