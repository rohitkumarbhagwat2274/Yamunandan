using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class sellerPickupAddress : System.Web.UI.Page
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

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("sellerhomepage.aspx");
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                if (isformvalid())
                {
                    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
                    using (SqlConnection con = new SqlConnection(connectionString))
                    {
                        string insertQuery = "INSERT INTO sellerpickupAddressTable (sellerusername, fullAddress, pincode, Phno) " +
                            "VALUES (@sellerusername, @fullAddress, @pincode, @Phno)";

                        SqlCommand cmd = new SqlCommand(insertQuery, con);
                        cmd.Parameters.AddWithValue("@sellerusername", username.Text);
                        cmd.Parameters.AddWithValue("@fullAddress", add.Text);
                        cmd.Parameters.AddWithValue("@pincode", pin.Text);
                        cmd.Parameters.AddWithValue("@Phno", phno.Text);

                        con.Open();
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Your Address details are saved Successfully');</script>");
                    }
                }
                else
                {
                    Response.Write("Please select all the fields.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }
        }

        private bool isformvalid()
        {
            if (string.IsNullOrEmpty(username.Text))
            {
                Response.Write("<script>alert('Username is a required field.');</script>");
                return false;
            }
            else if (string.IsNullOrEmpty(add.Text))
            {
                Response.Write("<script>alert('Full Address is a required field.');</script>");
                return false;
            }
            else if (string.IsNullOrEmpty(pin.Text))
            {
                Response.Write("<script>alert('Pincode/Postal code is a required field.');</script>");
                return false;
            }
            else if (string.IsNullOrEmpty(phno.Text))
            {
                Response.Write("<script>alert('Please provide an active phone number. It is a required field.');</script>");
                return false;
            }

            return true;
        }

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("updatepickupaddress.aspx");
        }
    }
}
