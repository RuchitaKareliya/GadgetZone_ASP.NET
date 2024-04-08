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
    public partial class deletewishlist : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            string query = "delete from wishlist where Id=" + Request.QueryString["Id"] + " and email='" + Session["email"] + "' ";
            SqlCommand cmd = new SqlCommand(query, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("wishlist.aspx");
        }
    }
}