using System;
using System.Data;
using System.Data.SqlClient;

namespace gadgetzone
{
    public partial class addtocart : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
            if (IsPostBack != true)
            {
                fillgrid();
            }
        }
        protected void fillgrid()
        {
            cn.Open();
            String str = "select * from cart where email='" + Session["email"] + "'";
            SqlDataAdapter sda = new SqlDataAdapter(str, cn);
            DataSet ds = new DataSet();
            int total = 0;
            sda.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                int amount = Convert.ToInt32(ds.Tables[0].Rows[i][5].ToString());
                total = total + amount;
                Session["amount"] = total;

            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
            lbltotal.Text = Convert.ToString(total);
            cn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("checkout.aspx");
        }
    }
}