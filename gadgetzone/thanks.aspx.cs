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
    public partial class thanks : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] != null)
            {
                string unm = Session["email"].ToString();
                string amount = Session["amount"].ToString();
                SqlDataAdapter sda = new SqlDataAdapter("select *from bill  where email='" + unm + "'and total_amount='" + amount + "'", cn);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    btot.Text = dt.Rows[0].ItemArray[9].ToString();
                    txtun.Text = dt.Rows[0].ItemArray[1].ToString();
                    txtem.Text = dt.Rows[0].ItemArray[2].ToString();
                    txtadd.Text = dt.Rows[0].ItemArray[5].ToString();
                    txtmo.Text = dt.Rows[0].ItemArray[4].ToString();
                    txtc.Text = dt.Rows[0].ItemArray[6].ToString();
                    txts.Text = dt.Rows[0].ItemArray[7].ToString();
                    txtmethod.Text = dt.Rows[0].ItemArray[3].ToString();



                }
            }
            cn.Open();
            SqlCommand cmd1 = new SqlCommand("delete from cart where email='" + Session["email"].ToString() + "'", cn);
            cmd1.ExecuteNonQuery();
            cn.Close();

            //if (Session["email"] == null)
            //{
            //    Response.Redirect("login.aspx");
            //}
            //else
            //{
            //    string user = Session["email"].ToString();
            //    cn.Open();
            //    string q = "select total_amount,fullname,email,mobile_no,address,payment_type from bill where email='" + Session["email"] + "'";
            //    SqlDataAdapter sda = new SqlDataAdapter(q, cn);
            //    DataSet ds = new DataSet();
            //    sda.Fill(ds);
            //    DataList1.DataSource = ds;
            //    DataList1.DataBind();
            //    cn.Close();

            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
} 