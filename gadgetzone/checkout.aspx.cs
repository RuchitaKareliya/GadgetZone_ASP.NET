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
    public partial class checkout : System.Web.UI.Page
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
                if (Session["amount"] != null)
                {
                    SqlDataAdapter sda = new SqlDataAdapter("select product_name from cart where email='" + Session["email"].ToString() + "'", cn);
                    DataTable ds = new DataTable();
                    sda.Fill(ds);
                    //lstitem.Text = ds.Rows[0].ItemArray[3].ToString();
                    lblpayment.Text = Session["amount"].ToString();
                    cn.Close();
                    string user = Session["email"].ToString();
                    //  lblpayment.Text = "12";
                    lbl.Text = "Select Payment Option";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string user = Session["Email"].ToString();

            cn.Open();
            string q = "insert into bill(fullname,email,payment_type,mobile_no,address,city,state,pincode,total_amount,payment_time) values('" + TextBox1.Text + "','" + user + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + Convert.ToDouble(lblpayment.Text) + "','" + System.DateTime.Now + "')";
            cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("thanks.aspx");
        }

        protected void btncash_Click(object sender, EventArgs e)
        {
            string user = Session["Email"].ToString();

            cn.Open();
            string q = "insert into bill(fullname,email,payment_type,mobile_no,address,city,state,pincode,total_amount,payment_time) values('" + TextBox1.Text + "','" + user + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + Convert.ToDouble(lblpayment.Text) + "','" + System.DateTime.Now + "')";
            cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("thanks.aspx");
            //string user = Session["id"].ToString();

            //cn.Open();
            //string q = "insert into payment(email,address,mobile,amount,type,entrydate) values('" + user + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + Convert.ToDouble(lblpayment.Text) + "','" + DropDownList1.SelectedItem.Text + "',' " + System.DateTime.Now + "')";
            //cmd = new SqlCommand(q, cn);
            //cmd.ExecuteNonQuery();
            //cn.Close();
            //Response.Redirect("thanks.aspx");

            Response.Write("cash");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex == 0)
            {
                lbl.Text = "Select Payment Option";
                btncash.Visible = false;
                Panel1.Visible = false;
            }
            else if (DropDownList1.SelectedIndex == 1 || DropDownList1.SelectedIndex == 2)
            {
                btncash.Visible = false;
                Panel1.Visible = true;
            }
            else if (DropDownList1.SelectedIndex == 3)
            {
                Panel1.Visible = false;
                btncash.Visible = true;
            }
        }
    }
}


       