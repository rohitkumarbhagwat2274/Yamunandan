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
    public partial class customersellersignup : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            con = new SqlConnection(connectionString);
            con.Open();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            try
            {
                if (isformvalid())
                {
                    string insertQuery = "INSERT INTO productSellercustomerdetails ( username, pass, email, phno, name, gender, photo) " +
                        "VALUES ( @username, @password, @email, @phno, @name, @gender, @photo)";

                    cmd = new SqlCommand(insertQuery, con);
                    cmd.Parameters.AddWithValue("@username", username.Text);
                    cmd.Parameters.AddWithValue("@password", pass.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@phno", phno.Text);
                    cmd.Parameters.AddWithValue("@name", name.Text);
                    cmd.Parameters.AddWithValue("@gender", gender.Text);
                    cmd.Parameters.AddWithValue("@photo", FileUpload1.FileName);


                    // Save files to the appropriate destination folder
                    string savePath = Server.MapPath("~/userpic/");
                    FileUpload1.SaveAs(Path.Combine(savePath, FileUpload1.FileName));


                    cmd.ExecuteNonQuery();

                    Response.Redirect("customersellerlogin.aspx?username=" + username.Text);
                    Response.Write("<script>alert('Your details are saved Successfully');</script>");

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
                Response.Write("<script>alert('Username is required.');</script>");
                return false;
            }
            else if (pass.Text == "")
            {
                Response.Write("<script>alert('Password is required.');</script>");
                return false;
            }
            else if (pass.Text != conformpass.Text)
            {
                Response.Write("<script>alert('Passwords do not match.');</script>");
                return false;
            }

            else if (email.Text == "")
            {
                Response.Write("<script>alert('Email is required.');</script>");
                return false;
            }
            else if (phno.Text == "")
            {
                Response.Write("<script>alert('Phone Number is required.');</script>");
                return false;
            }
            else if (name.Text == "")
            {
                Response.Write("<script>alert('Name is required.');</script>");
                return false;
            }
            else if (gender.Text == "")
            {
                Response.Write("<script>alert('Gender is required.');</script>");
                return false;
            }

            else if (FileUpload1.HasFile == false)
            {
                Response.Write("<script>alert('Please select the files.');</script>");
                return false;
            }

            return true;

        }


        protected void back_Click(object sender, EventArgs e)
        {

        }
    }
}