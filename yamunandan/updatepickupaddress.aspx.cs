using System;
using System.Data.SqlClient;
using System.Reflection.Emit;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class updatepickupaddress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the data to the GridView
                BindGridView();

                if (Session["username"] != null)
                {
                    username.Text = Session["username"].ToString();
                    SqlDataSource1.SelectCommand = "SELECT * FROM sellerpickupAddressTable WHERE sellerusername = @username";
                    SqlDataSource1.SelectParameters.Add("username", Session["username"].ToString());
                    GridView1.DataBind();
                }
                else
                {
                    SqlDataSource1.SelectCommand = "";
                    GridView1.DataBind();
                    //Response.Redirect("Customerselldashboard.aspx");
                }
            }
        }

        private void BindGridView()
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM sellerpickupAddressTable WHERE sellerusername = @username", con);
                cmd.Parameters.AddWithValue("@username", username.Text.Trim());

                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    Label1.Text = username.Text;
                    if (dr.HasRows)
                    {
                        GridView1.DataSource = dr;
                        GridView1.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }
    }
}
