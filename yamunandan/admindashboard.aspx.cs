using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class admindashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie c = Request.Cookies["mycookie"];
            if (c != null)
            {
                Label2.Text = c["username"];
                Label2.Visible = true;
            }
            if (!IsPostBack)
            {
                if (Session["username"] != null)
                {
                    Label2.Text = Session["username"].ToString();
                    Label2.Visible = true;
                }
            }
        }

        protected void employees_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }

        protected void medicines_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("pharmacymanagement.aspx");
        }

        protected void grossary_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("GroceryManagement.aspx");
        }
    }
}