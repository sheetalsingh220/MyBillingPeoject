using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BILLING
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=sheetalDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd;
            cmd = new SqlCommand("insert into Registration values('" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "')", con);


            cmd.ExecuteNonQuery();
        }
    }
}