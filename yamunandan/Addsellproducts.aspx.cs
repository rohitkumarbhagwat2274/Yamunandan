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
    public partial class Addsellproducts : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    username.Text = Session["username"].ToString();

                }
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
                    string insertQuery = "INSERT INTO sellproductTable (sellerusername, productname, brandname,  productType, productcolor, batchid, exp, mfg, defected, mrp, quantity, frontpic, backpic) " +
                        "VALUES (@csellerusername, @productname, @brandname, @productType, @productcolor, @batchid, @exp, @mfg, @defected, @mrp, @quantity, @frontpic, @backpic)";

                    cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@csellerusername", color.Text);
                    cmd.Parameters.AddWithValue("@productname", productname.Text);
                    cmd.Parameters.AddWithValue("@brandname", productbrand.Text);
                    cmd.Parameters.AddWithValue("@productType", productType.Text);
                    cmd.Parameters.AddWithValue("@productcolor", color.Text);
                    cmd.Parameters.AddWithValue("@batchid", batchid.Text);
                    cmd.Parameters.AddWithValue("@exp", exp.Text);
                    cmd.Parameters.AddWithValue("@mfg", mfg.Text);
                    cmd.Parameters.AddWithValue("@defected", condition.Text);
                    cmd.Parameters.AddWithValue("@mrp", unitPrice.Text);
                    cmd.Parameters.AddWithValue("@quantity", quantity.Text);
                    cmd.Parameters.AddWithValue("@frontpic", FileUpload1.FileName);
                    cmd.Parameters.AddWithValue("@backpic", FileUpload2.FileName);


                    // Save files to the appropriate destination folder
                    string savePath = Server.MapPath("~/sellerproductimg/");
                    FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));
                    FileUpload1.SaveAs(Path.Combine(savePath, FileUpload2.FileName));

                    cmd.ExecuteNonQuery();

                    Response.Write("<script>alert('Your products has been sold Successfully');</script>");
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
                Response.Write("<script>alert('Seller User Name  is required.');</script>");
                return false;
            }
            else if (color.Text == "")
            {
                Response.Write("<script>alert('Colour is required.');</script>");
                return false;
            }

            else if (productname.Text == "")
            {
                Response.Write("<script>alert('Product Name.');</script>");
                return false;
            }
            else if (productbrand.Text == "")
            {
                Response.Write("<script>alert('Product Brand is Required.');</script>");
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
            else if (batchid.Text == "")
            {
                Response.Write("<script>alert('BarCode Number is required.');</script>");
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
            else if (condition.Text == "")
            {
                Response.Write("<script>alert('Condition of the product is Required.');</script>");
                return false;
            }
            else if (FileUpload1.HasFile == false)
            {
                Response.Write("<script>alert('Please select the files.');</script>");
                return false;
            }


            return true;

        }
    }
}