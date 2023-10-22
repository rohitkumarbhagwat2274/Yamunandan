using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class GroceryManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addgrossary_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Addgrocery.aspx");
        }

        protected void display_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("displaygrocery.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}