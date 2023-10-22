using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class Addgrocery : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                username.Text = c["username"];

            }
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(connectionString);
            con.Open();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                if (isformvalid())
                {
                    string insertQuery = "INSERT INTO GroceryTable (color, sizetype, sizetypebylebel, sizetypevalue, gender, unitprice, quantity, barcode, grocerytype, mfgdate, expdate, photo, about, createdbyuser, status) " +
                        "VALUES (@color, @sizetype, @sizetypebylebel, @sizetypevalue, @gender, @unitprice, @quantity, @barcode, @grocerytype, @mfgdate, @expdate, @photo, @about, @createdbyuser, @status)";

                    cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@color", color.Text);
                    cmd.Parameters.AddWithValue("@sizetype", sizeType.Text);
                    cmd.Parameters.AddWithValue("@sizetypebylebel", sizeTypeLabel.Text);
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
                    cmd.Parameters.AddWithValue("@createdbyuser", username.Text);
                    cmd.Parameters.AddWithValue("@status", status.Text);


                    // Save files to the appropriate destination folder
                    string savePath = Server.MapPath("~/product/");
                    FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));


                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Employee details are saved Successfully');</script>");
                }
                else
                {
                    Response.Write("Please select all three files.");
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }
            finally
            {
                // Close the connection and command objects to release resources
                cmd?.Dispose();
                con?.Close();
            }
        }

        private bool isformvalid()
        {
            if (username.Text == "")
            {
                Response.Write("<script>alert('Who Create This Grocery  is required.');</script>");
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
    }
}