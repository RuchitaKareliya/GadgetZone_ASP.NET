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
    public partial class add_product_form : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string filename = FileUpload1.PostedFile.FileName;
                string filepath = "~/img/" + FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/img/") + filename);
                cn.Open();
                string padd="insert into products values('" + DropDownList1.SelectedItem.Text + "','" + DropDownList2.SelectedItem.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+DateTime.Now+"','" + filepath + "')";
                cmd = new SqlCommand(padd, cn);
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Write("<Script > alert('product added successfully');</Script>");
                Response.Redirect("add_product.aspx");
            }
        }
    }
}