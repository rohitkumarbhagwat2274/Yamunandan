using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("admindashboard.aspx");
        }


        protected void admin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void displayadmin_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("displayadmin.aspx");
        }

        protected void employee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("CreateEmployee.aspx");
        }

        protected void displayemployee_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("DisplayEmployee.aspx");
        }

        protected void salary_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("employeepay.aspx");
        }
    }
}