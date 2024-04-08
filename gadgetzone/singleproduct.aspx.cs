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
    public partial class singleproduct : System.Web.UI.Page
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
                string user = Session["email"].ToString();

                cn.Open();
                //string C = (Request.QueryString["id] ?? "0").ToString();
                //  Label1.Text=C;
                string id = Request.QueryString["id"].ToString();
                Session["Id"] = id;
                Response.Write(Session["Id"]);
                cn.Close();
                //string user = Session["id"].ToString();

                //cn.Open();
                ////string C = (Request.QueryString["id] ?? "0").ToString();
                ////  Label1.Text=C;
                // string id = Request.QueryString["id"].ToString();
                //Session["pid"] = id;
                //Response.Write(Session["pid"]);
                //cn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string user = Session["email"].ToString();

            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
            Label lblpronm = (Label)DataList1.Items[0].FindControl("product_nameLabel");
            Image img = (Image)DataList1.Items[0].FindControl("Image2");
            Label lblpri = (Label)DataList1.Items[0].FindControl("priceLabel");
            //Label lblCat = (Label)DataList1.Items[0].FindControl("Label4");
            TextBox pQty = (TextBox)DataList1.Items[0].FindControl("TextBox1");
            //DropDownList drpQty = (DropDownList)DataList1.Items[0].FindControl("DropDownList1");
            //Image2.ImageUrl = Convert.ToString(rdr["img"]);
            //Label total=(Label)DataList1.Items[0].FindControl("")
            //int totalAmt = int.Parse(lblpri.Text) * int.Parse(pQty.SelectedValue);
            int totalAmt = Convert.ToInt32(lblpri.Text) * Convert.ToInt32(pQty.Text);
            cn.Open();
            Response.Write(lblpronm.Text);
            string q = "insert into cart values('" + lblpronm.Text + "','" + img.ImageUrl + "','" + lblpri.Text + "','" + pQty.Text + "','" + totalAmt + "','" + user+ "')";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Session.Remove("Id");
            Response.Redirect("addtocart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user = Session["email"].ToString();
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");

            Label lblpronm = (Label)DataList1.Items[0].FindControl("product_nameLabel");
            Image img = (Image)DataList1.Items[0].FindControl("Image2");
            Label lblpri = (Label)DataList1.Items[0].FindControl("priceLabel");
            Label lbld = (Label)DataList1.Items[0].FindControl("decryptionLabel");
            cn.Open();
            Response.Write(lblpronm.Text);
            string q = "insert into wishlist values('" + lblpronm.Text + "','" + img.ImageUrl + "','" + lblpri.Text + "','" + lbld.Text + "','" + user + "')";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Session.Remove("Id");
            Response.Redirect("wishlist.aspx");
        }
        //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        //{
        //    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
        //    string qty = dlist.SelectedValue.ToString();
        //    Response.Redirect("addtocart.aspx?Id=" + Session["Id"] + "&quantity=" + dlist.SelectedValue.ToString());
        //}
    }
}
