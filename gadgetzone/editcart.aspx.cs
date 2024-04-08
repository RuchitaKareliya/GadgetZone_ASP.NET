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
    public partial class editcart : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        //SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack != true)
            {
                cn.Open();
                String query = "select * from cart where c_Id=" + Request.QueryString["c_Id"];
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.CommandType = CommandType.Text;
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    lbl_name.Text = Convert.ToString(rdr["product_name"]);
                    lbl_price.Text = Convert.ToString(rdr["price"]);
                    TextBox1.Text = Convert.ToString(rdr["quantity"]);
                    Image1.ImageUrl = Convert.ToString(rdr["image"]);
                    HiddenField1.Value = Convert.ToString(rdr["c_Id"]);
                }
                cn.Close();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int amount = Convert.ToInt32(lbl_price.Text) * Convert.ToInt32(TextBox1.Text);
            string qrystr;
            qrystr = "update cart set quantity ='" + TextBox1.Text + "',total='" + amount + "'  WHERE c_Id=" + HiddenField1.Value;
            cn.Open();
            SqlCommand cmd = new SqlCommand(qrystr, cn);
            cmd.CommandType = CommandType.Text;
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("addtocart.aspx");
        }
    }

}