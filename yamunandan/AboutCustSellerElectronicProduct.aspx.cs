using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class AboutElectronicProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Bind the data to the GridView
                BindGridView();

                if (Electronic.Text != null)
                {
                    
                    SqlDataSource1.SelectCommand = "SELECT * FROM [sellproductTable] where productType = '" + Electronic.Text+ "'";
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
                SqlCommand cmd = new SqlCommand("SELECT * FROM sellproductTable WHERE productType =  @username", con);
                cmd.Parameters.AddWithValue("@username", Electronic.Text.Trim());

                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                  
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
