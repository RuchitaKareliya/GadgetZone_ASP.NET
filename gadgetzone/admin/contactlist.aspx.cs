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
    public partial class contactlist : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\PROJECT\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();

            if (Session["kruser"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }
            cn.Close();
        }
    }
}