using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BILLING
{
    public partial class Generate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=sheetalDB;Integrated Security=True");
            conn.Open();
            SqlCommand cmd;
            cmd = new SqlCommand("insert into bill values('" + TextBox1.Text + "','" + DropDownList1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + DropDownList2.Text + "','" + DropDownList3.Text + "')", conn);
            cmd.ExecuteNonQuery();
            SqlDataAdapter ad = new SqlDataAdapter("select * from bill", conn);
            DataSet ds = new DataSet();
            ad.Fill(ds);
            //GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}