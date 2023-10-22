using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class pharmacymanagement : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addmedicine_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AddMedicine.aspx");
        }

        protected void display_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("updatemedicine.aspx");
        }
    }
}