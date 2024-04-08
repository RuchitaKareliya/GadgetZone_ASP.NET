using System;
using System.Data.SqlClient;

namespace gadgetzone
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\BCA\Sem_6\project_Sem_6\gadgetzone\gadgetzone\App_Data\gadgetzone.mdf;Integrated Security=True;Connect Timeout=30");
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            String email = TextBox2.Text;
            SqlCommand cmd = new SqlCommand("select * from registration where email=@email ",cn);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count > 0)
            {
                Label1.Text = "Your username already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                String regdata = "insert into registration values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                cmd = new SqlCommand(regdata, cn);
                cmd.ExecuteNonQuery();
                
                Response.Write("< script > alert('inserted ') </ script > ");
                Response.Redirect("Login.aspx");
                cn.Close();
            }

        }
    }

}