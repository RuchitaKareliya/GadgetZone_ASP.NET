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
    public partial class procameras : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

            //DataTable dt = new DataTable();
            //dt = (DataTable)Session["buyitems"];
            //if (dt != null)
            //{
            //    Label2.Text = DataTable.Rows.Count.ToString();
            //}
            //else
            //{
            //    Label2.Text = "0";
            //}

        }
    }
}