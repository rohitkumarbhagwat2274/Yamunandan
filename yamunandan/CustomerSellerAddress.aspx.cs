using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class CustomerSellerAddress : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind the data to the GridView
                BindGridView();

                if (Session["username"] != null)
                {
                    username.Text = Session["username"].ToString();
                }
            }
        }

        private void BindGridView()
        {
            // Retrieve data from the data source and return it as a DataTable
            DataTable data = GetDataFromDataSource();

            // Bind the data to the GridView
            GridView1.DataSource = data;
            GridView1.DataBind();
        }

        private DataTable GetDataFromDataSource()
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM ProductSellerAddressTable WHERE @username = @username", con);
                cmd.Parameters.AddWithValue("@username", username.Text);

                DataTable data = new DataTable();
                try
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        data.Load(dr);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }

                return data;
            }
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
                        string insertQuery = "INSERT INTO ProductSellerAddressTable ( username, AddressType, home, po, ps, dist, state, city, pin, Status, addproof) " +
                            "VALUES (@username, @AddressType, @home, @po, @ps, @dist, @state, @city, @pin, @Status, @addproof)";

                        SqlCommand cmd = new SqlCommand(insertQuery, con);
                        cmd.Parameters.AddWithValue("@username", username.Text);
                        cmd.Parameters.AddWithValue("@AddressType", addtype.Text);
                        cmd.Parameters.AddWithValue("@home", home.Text);
                        cmd.Parameters.AddWithValue("@po", po.Text);
                        cmd.Parameters.AddWithValue("@ps", ps.Text);
                        cmd.Parameters.AddWithValue("@dist", dist.Text);
                        cmd.Parameters.AddWithValue("@state", state.Text);
                        cmd.Parameters.AddWithValue("@city", city.Text);
                        cmd.Parameters.AddWithValue("@pin", pin.Text);
                        cmd.Parameters.AddWithValue("@Status", status.Text);
                        cmd.Parameters.AddWithValue("@addproof", FileUpload1.FileName);

                        // Save files to the appropriate destination folder
                        string savePath = Server.MapPath("~/userpic/");
                        FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));

                        con.Open();
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Your Address details are saved Successfully');</script>");
                    }
                }
                else
                {
                    Response.Write("Please select all The files.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }
        }

        private bool isformvalid()
        {
            if (pin.Text == "")
            {
                Response.Write("<script>alert('Pincode is Required Field.');</script>");
                return false;
            }
            else if (home.Text == "")
            {
                Response.Write("<script>alert('Home is Required Field.');</script>");
                return false;
            }
            else if (po.Text == "")
            {
                Response.Write("<script>alert('Post Office is Required Field.');</script>");
                return false;
            }
            else if (ps.Text == "")
            {
                Response.Write("<script>alert('Police Station is Required Field.');</script>");
                return false;
            }
            else if (dist.Text == "")
            {
                Response.Write("<script>alert('District is required.');</script>");
                return false;
            }
            else if (state.Text == "")
            {
                Response.Write("<script>alert('State is required Field.');</script>");
                return false;
            }
            else if (city.Text == "")
            {
                Response.Write("<script>alert('City is required Field.');</script>");
                return false;
            }
            else if (FileUpload1.HasFile == false)
            {
                Response.Write("<script>alert('Please select the files.');</script>");
                return false;
            }

            return true;
        }

        protected void update_Click(object sender, EventArgs e)
        {
            // Add functionality for the update button here
            Response.Redirect("sellerAddressUpdate.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            // Add functionality for the back button here
            Response.Redirect("sellerhomepage.aspx");
        }
    }
}
