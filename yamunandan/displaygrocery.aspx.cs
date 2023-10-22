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
    public partial class displaygrocery : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                username.Text = c["username"];

            }
            if (!IsPostBack)
            {
                BindProductDetails();
            }
        }

        protected void BindProductDetails()
        {
            // Retrieve the product details from the database and bind them to the DropDownList
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT productdetailsid FROM GroceryTable", con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                productdetails.DataSource = dr;
                productdetails.DataTextField = "productdetailsid";
                productdetails.DataValueField = "productdetailsid";
                productdetails.DataBind();
                dr.Close();
            }
        }

        protected void productdetails_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Retrieve the selected item's data from the database and populate the text boxes
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT color, sizetype, sizetypebylebel, sizetypevalue, gender, unitprice, quantity, barcode, grocerytype, mfgdate, expdate, photo, about, updatedbyuser, status FROM GroceryTable WHERE productdetailsid = @productdetailsid", con);
                cmd.Parameters.AddWithValue("@productdetailsid", productdetails.SelectedValue);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    color.Text = dr["color"].ToString();
                    sizeType.Text = dr["sizetype"].ToString();
                    sizeTypeLabel.Text = dr["sizetypebylebel"].ToString();
                }
                dr.Close();
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            if (isformvalid())
            {
                // Update the record in the database with the modified values
                string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand("UPDATE GroceryTable SET color = @color, sizetype = @sizetype, sizetypebylebel = @sizetypebylebel, sizetypevalue = @sizetypevalue, gender = @gender, unitprice = @unitprice, quantity = @quantity, barcode = @barcode, grocerytype = @grocerytype, mfgdate = @mfgdate, expdate = @expdate, photo = @photo, about = @about, updatedbyuser = @updatedbyuser, status = @status WHERE productdetailsid = @productdetailsid", con);
                    cmd.Parameters.AddWithValue("@color", color.Text);
                    cmd.Parameters.AddWithValue("@sizetype", sizeType.Text);
                    cmd.Parameters.AddWithValue("@sizetypebylebel", sizeTypeLabel.Text);
                    cmd.Parameters.AddWithValue("@productdetailsid", productdetails.SelectedValue);

                    cmd.Parameters.AddWithValue("@sizetypevalue", sizevalue.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);
                    cmd.Parameters.AddWithValue("@unitprice", unitPrice.Text);
                    cmd.Parameters.AddWithValue("@quantity", quantity.Text);
                    cmd.Parameters.AddWithValue("@barcode", barcode.Text);
                    cmd.Parameters.AddWithValue("@grocerytype", groceryType.Text);
                    cmd.Parameters.AddWithValue("@mfgdate", mfg.Text);
                    cmd.Parameters.AddWithValue("@expdate", exp.Text);
                    cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@about", about.Text);
                    cmd.Parameters.AddWithValue("@updatedbyuser", username.Text);
                    cmd.Parameters.AddWithValue("@status", status.Text);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    con.Close();
                    if (rowsAffected > 0)
                    {
                        // Update successful
                        BindProductDetails(); // Rebind the DropDownList
                        GridView1.DataBind(); // Rebind the GridView
                        Response.Write("<script>alert('The file updated successfully');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Updation Failed due to some reason');</script>");
                        // Update failed
                        // Handle the error or display an error message
                    }
                }
            }
        }

        private bool isformvalid()
        {
            if (username.Text == "")
            {
                Response.Write("<script>alert('Please Login again Do first logout after that please do login');</script>");
                return false;
            }
            else if (color.Text == "")
            {
                Response.Write("<script>alert('Colour is required.');</script>");
                return false;
            }
            else if (sizeType.Text == "")
            {
                Response.Write("<script>alert('Size Type like (Small,Medium,Large) is required.');</script>");
                return false;
            }
            else if (sizeTypeLabel.Text == "")
            {
                Response.Write("<script>alert('Size Type like (X,M,S) is required.');</script>");
                return false;
            }
            else if (sizevalue.Text == "")
            {
                Response.Write("<script>alert('Size Valu like 1kg, 2kg is required.');</script>");
                return false;
            }
            else if (gender.Text == "")
            {
                Response.Write("<script>alert('Gender is Required');</script>");
                return false;
            }
            else if (unitPrice.Text == "")
            {
                Response.Write("<script>alert('Per Unit Price is required.');</script>");
                return false;
            }
            else if (quantity.Text == "")
            {
                Response.Write("<script>alert('Quantity is required.');</script>");
                return false;
            }
            else if (barcode.Text == "")
            {
                Response.Write("<script>alert('BarCode is required.');</script>");
                return false;
            }
            else if (mfg.Text == "")
            {
                Response.Write("<script>alert('Manufacturing Date is required.');</script>");
                return false;
            }

            else if (exp.Text == "")
            {
                Response.Write("<script>alert('Expiry Date is required.');</script>");
                return false;
            }
            else if (FileUpload1.HasFile == false)
            {
                Response.Write("<script>alert('Please select all three files.');</script>");
                return false;
            }

            return true;
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("GroceryManagement.aspx");
        }
    }
}
