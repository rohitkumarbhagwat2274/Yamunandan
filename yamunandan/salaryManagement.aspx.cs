using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class salaryManagement : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //updatedbyusername.Text = Session["username"].ToString();
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            con = new SqlConnection(connectionString);
            con.Open();
        }

        protected void pay_Click(object sender, EventArgs e)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    string insertQuery = "INSERT INTO emppayment (updatedbyuserid,payamount, paydate, trans_id, transpic) " +
                         "VALUES (@userid,@payamount, @paydate, @trans_id, @transpic)";

                    cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@updatedbyuserid", updatedbyusername.Text);
                    cmd.Parameters.AddWithValue("@userid", userid.Text);
                    cmd.Parameters.AddWithValue("@payamount", amount.Text);
                    cmd.Parameters.AddWithValue("@paydate", paydate.Text);
                    cmd.Parameters.AddWithValue("@trans_id", transid.Text);
                    cmd.Parameters.AddWithValue("@transpic", FileUpload1.FileName);

                    // Save files to the appropriate destination folder
                    string savePath = Server.MapPath("~/userpic/");
                    FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));


                    cmd.ExecuteNonQuery();

                    Response.Write("Record successfully inserted");

                    ClearFields();
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

        private void ClearFields()
        {
            // Clear form fields
            updatedbyusername.Text = "";
            userid.Text = "";
            amount.Text = "";
            paydate.Text = "";
            transid.Text = "";
        }



        protected void display_Click(object sender, EventArgs e)
        {
            Response.Redirect("displayemployeepayment.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");

        }
    }
}