using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class CustomerProductManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AboutCustSellerElectronicProduct.aspx");
        }

        protected void medicine_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("AboutCustomerSellermedicine.aspx");
        }
    }
}