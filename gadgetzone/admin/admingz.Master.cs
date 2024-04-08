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
    public partial class admingz : System.Web.UI.MasterPage
    {
        SqlConnection alcn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\PROJECT\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["id"] == null)
            //{
            //    Response.Redirect("adminlogin.aspx");
            //}
            //else
            //{
            //    Response.Write(Session["id"]);
            //}
        }


        

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("adminlogin.aspx");
        }
    }
}