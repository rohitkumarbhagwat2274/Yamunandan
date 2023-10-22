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
    public partial class AddMedicine : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            con = new SqlConnection(connectionString);
            con.Open();
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                updatedby.Text = c["username"];

            }

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("pharmacymanagement.aspx");
        }

        protected void add_Click(object sender, EventArgs e)
        {
            try
            {
                if (isformvalid())
                {
                    using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                    {
                        if (FileUpload1.HasFile)
                        {
                            string insertQuery = "INSERT INTO medicine (updateby, name, power, quantity, exp, mfgdate, companyname, batchno, protype, medicinetype, color, consume, about, photo, rs, composition, side_effect) " +
                                "VALUES (@updateby, @name, @power, @quantity, @exp,@mfgdate, @companyname, @batchno, @protype, @medicinetype, @color, @consume, @about, @photo, @rs, @composition, @side_effect)";

                            cmd = new SqlCommand(insertQuery, con);
                            cmd.Parameters.AddWithValue("@updateby", updatedby.Text);
                            cmd.Parameters.AddWithValue("@name", name.Text);
                            cmd.Parameters.AddWithValue("@power", power.Text);
                            cmd.Parameters.AddWithValue("@quantity", quantity.Text);
                            cmd.Parameters.AddWithValue("@exp", expdate.Text);
                            cmd.Parameters.AddWithValue("@mfgdate", mfgdate.Text);
                            cmd.Parameters.AddWithValue("@companyname", company.Text);
                            cmd.Parameters.AddWithValue("@batchno", batch.Text);
                            cmd.Parameters.AddWithValue("@protype", prodtype.Text);
                            cmd.Parameters.AddWithValue("@medicinetype", medicinetype.Text);
                            cmd.Parameters.AddWithValue("@color", color.Text);
                            cmd.Parameters.AddWithValue("@consume", consume.Text);
                            cmd.Parameters.AddWithValue("@about", discribe.Text);
                            cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);
                            cmd.Parameters.AddWithValue("@rs", rs.Text);
                            cmd.Parameters.AddWithValue("@composition", composition.Text);
                            cmd.Parameters.AddWithValue("@side_effect", effect.Text);

                            // Save files to the appropriate destination folder
                            string savePath = Server.MapPath("~/product/");
                            FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));


                            cmd.ExecuteNonQuery();

                            Response.Write("Record successfully inserted");

                            ClearFields();
                        }
                    }
                }
                else
                {
                    Response.Write("Please select the files.");
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
            if (updatedby.Text == "")
            {
                Response.Write("<script > alert('Updated By Userid is need ');</Script>");
                return false;
            }
            else if (name.Text == "")
            {
                Response.Write("<script > alert('invalid input');</Script>");
                return false;
            }
            else if (power.Text == "")
            {
                Response.Write("<script > alert('Type What is the Power of the Medicine');</Script>");
                return false;
            }
            else if (quantity.Text == "")
            {
                Response.Write("<script > alert('Type How Much Quantity You are taking');</Script>");
                return false;
            }

            else if (expdate.Text == "")
            {
                Response.Write("<script > alert('Expairy Date is not Valid ');</Script>");
                return false;
            }
            else if (mfgdate.Text == "")
            {
                Response.Write("<script > alert('Manufacturing Date is not Valid ');</Script>");
                return false;
            }
            else if (effect.Text == "")
            {
                Response.Write("<script > alert('Mention Side Effect of This Medicine  ');</Script>");
                return false;
            }
            else if (company.Text == "")
            {
                Response.Write("<script > alert('Mention Company Name ');</Script>");
                return false;
            }
            else if (consume.Text == "")
            {
                Response.Write("<script > alert('How to Consume medicine ');</Script>");
                return false;
            }
            else if (composition.Text == "")
            {
                Response.Write("<script > alert('Composition is not not fill ');</Script>");
                return false;
            }
            return true;

        }

        private void ClearFields()
        {
            // Clear form fields
            updatedby.Text = "";
            name.Text = "";
            power.Text = "";
            quantity.Text = "";
            expdate.Text = "";
            mfgdate.Text = "";
            company.Text = "";
            batch.Text = "";
            prodtype.Text = "";
            color.Text = "";
            consume.Text = "";
            medicinetype.Text = "";
            discribe.Text = "";
            rs.Text = "";
            composition.Text = "";
            effect.Text = "";
        }

        protected void update_Click(object sender, EventArgs e)
        {

        }
    }
}