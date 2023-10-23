using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class adminlogin : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd1;
        SqlCommand cmd2;

        int res;
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\rk556\OneDrive\Desktop\final\EcommerceWebsite\EcommerceWebsite\App_Data\Database1.mdf;Integrated Security=True;";
            con = new SqlConnection(connectionString);
            con.Open();

        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {

                cmd1 = new SqlCommand("select count(*) from employeedetails where username ='" + userid.Text + "' and pass='" + pass.Text + "'", con);
                cmd2 = new SqlCommand("select count(*) from userdetails where username ='" + userid.Text + "' and pass='" + pass.Text + "'", con);

                if (usertype.Text == "Admin")
                {
                    res = (int)cmd2.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Admin in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Default.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Electrician")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Electrician in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Maintainer")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Maintainer in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Customer Care")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Customer Care in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Distributer")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Distributer in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Sellar")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Sellar in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Doctor")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Doctor in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(5);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

                if (usertype.Text == "Delivery Partner")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Delivery Partner in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(2);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);

                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }


                if (usertype.Text == "Accountent")
                {
                    res = (int)cmd1.ExecuteScalar();
                    if (res > 0)
                    {
                        Response.Write("<script>alert('Welcome Accountent in to the yamunandan pvt');</script>");
                        // Response.Redirect("dashbord.aspx?username ="+txtuser.Text);

                        HttpCookie cookie = new HttpCookie("mycookie");
                        cookie["username"] = userid.Text;
                        //cookie["pwd"] = TextBox2.Text;
                        Response.Cookies.Add(cookie); //Response.SetCookie(cookie);
                        cookie.Expires = DateTime.Now.AddMinutes(2);
                        Response.Redirect("Employeedashboard.aspx?username=" + userid.Text);


                    }
                    else
                        Response.Write("<script>alert('Invalid User id and password');</script>");
                }

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            {
                con.Close();
            }
        }

        protected void forgot_Click(object sender, EventArgs e)
        {

        }
    }
}
    