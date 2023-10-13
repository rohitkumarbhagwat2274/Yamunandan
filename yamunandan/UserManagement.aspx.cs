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

        protected void employees_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void medicines_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}