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
    public partial class wishlist : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                cn.Open();
                String str = "select * from wishlist where email='" + Session["email"] + "'";
                SqlDataAdapter sda = new SqlDataAdapter(str, cn);
                DataSet ds = new DataSet();
                sda.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
                cn.Close();
            }
        }
    }
}