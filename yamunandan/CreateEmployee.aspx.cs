﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class CreateEmployee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeAddress.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserManagement.aspx");
        }
    }
}