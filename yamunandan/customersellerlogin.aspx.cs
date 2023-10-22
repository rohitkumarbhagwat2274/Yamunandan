using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class customersellerlogin : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd1;

        int res;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            con = new SqlConnection(connectionString);
            con.Open();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                con.Open();
                string query = "SELECT COUNT(*) FROM productSellercustomerdetails WHERE username = @username AND pass = @password";
                SqlCommand cmd1 = new SqlCommand(query, con);
                cmd1.Parameters.AddWithValue("@username", username.Text);
                cmd1.Parameters.AddWithValue("@password", pass.Text);
                int res = (int)cmd1.ExecuteScalar();

                if (res > 0)
                {
                    Session["username"] = username.Text;
                    Response.Redirect("sellerhomepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid username or password');</script>");
                }
            }


        }


        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Customerselldashboard.aspx");
        }
    }
}
