using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace gadgetzone.admin
{
    public partial class add_product : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\PROJECT\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        SqlDataAdapter adapt;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }

            cn.Open();
            //ShowData();
            if (Session["kruser"] == null)
            {
                Response.Redirect("adminlogin.aspx");
            }
            cn.Close();
        }
        protected void ShowData()
        {
            dt = new DataTable();
            cn = new SqlConnection(cs);
            cn.Open();
            adapt = new SqlDataAdapter("Select * from products", cn);
            adapt.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            cn.Close();
        }
        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label Id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            DropDownList DropDownList1 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList1");
            DropDownList DropDownList2 = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("DropDownList2");
            //TextBox txt1 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1");
            //TextBox txt2 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2");
            TextBox txt3 = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3");
            TextBox txt4 = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox txt5 = GridView1.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox txt6 = GridView1.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            FileUpload file1 = GridView1.Rows[e.RowIndex].FindControl("file1") as FileUpload;
            cn = new SqlConnection(cs);
            cn.Open();
            //updating the record  
             if (!file1.HasFile)
             {

//            Response.Write("...............Updateddddddddddddddddddddddddddd.......");
            string updt = "update products set categories_name='" + DropDownList1.SelectedItem.Text + "',company='" + DropDownList2.SelectedItem.Text + "',product_name='" + txt3.Text + "',decryption='" + txt4.Text + "',price=" + Convert.ToDouble(txt5.Text) + ",quantity='" + txt6.Text + "',date_time='" + DateTime.Now.ToString()+"' where Id="+Convert.ToInt64(Id.Text);
            SqlCommand cmdupdt = new SqlCommand(updt,cn);
            //SqlCommand cmd = new SqlCommand("Update products set categories_name='" + txt1.Text + "',company='" + txt2.Text + "',product_name='" + txt3.Text + "',decryption='" + txt4.Text + "',price=" + Convert.ToDouble(txt5.Text) + ",quantity='" + txt6.Text + "',date_time='" + DateTime.Now.ToString() + "' where Id=" + Convert.ToInt32(Id.Text), cn);
            //Response.Write(".........................Succceeeesssssssssssss.................");
            int res=cmdupdt.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("........................ Updated Successfully..............");
            }
            }
            else
            {
                string filename = file1.FileName;
                string filepath = "~/img/" + file1.FileName;
                file1.SaveAs(Server.MapPath("~/img/") + filename);
                SqlCommand cmdimg = new SqlCommand("Update products set categories_name='" + DropDownList1.SelectedItem.Text + "',company='" + DropDownList2.SelectedItem.Text + "',product_name='" + txt3.Text + "',decryption='" + txt4.Text + "',price=" + Convert.ToDouble(txt5.Text) + ",quantity='" + txt6.Text + "',date_time='" + DateTime.Now.ToString() + "',image='" + filepath + "' where Id=" + Convert.ToInt32(Id.Text), cn);
                int res=cmdimg.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("........................ Updated Successfully..............");
                }
            }
            
            //Response.Write("Update products set categories_name='" + txt1.Text + "',company='" + txt2.Text + "',product_name='" + txt3.Text + "',decryption='" + txt4.Text + "',price=" + Convert.ToDouble(txt5.Text) + ",quantity='" + txt6.Text + "',date_time='" + DateTime.Now + "' where Id=" + Convert.ToInt32(Id.Text));
            cn.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView1.EditIndex = -1;
            ShowData();
        }
        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label Id = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            //Label lbldeleteid = (Label)row.FindControl("lblID");
            cn = new SqlConnection(cs);
            cn.Open();
            SqlCommand cmddel = new SqlCommand("Delete FROM products where Id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", cn);
            cmddel.ExecuteNonQuery();
            cn.Close();
            ShowData();
        }
    }
}