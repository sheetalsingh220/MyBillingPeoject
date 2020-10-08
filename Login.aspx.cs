using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BILLING
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string q = "select * from Login where Username='" + TextBox1.Text + "'AND password='" + TextBox2.Text + "'";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=sheetalDB;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Response.Redirect("Billl.aspx");

            }
            else
            {
                Response.Write("<script> alert('Invalid Username or Password');</script>");
            }
        }
    }
}