using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Text == "rohit" && pass.Text == "123")
            {
                Response.Write("Userid and password is wrong !");
            }
            else
               
            Response.Redirect("admindashboard.aspx");
        }
    }
}