using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yamunandan
{
    public partial class help : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the dropdown list
                select.Items.Add(new ListItem("None", ""));
                select.Items.Add(new ListItem("Delivery", "Delivery"));
                select.Items.Add(new ListItem("Shopping", "Shopping"));
                select.Items.Add(new ListItem("Selling", "Selling"));
                select.Items.Add(new ListItem("Other", "Other"));
                select.Items.Add(new ListItem("Feedback", "Feedback"));
            }
        }

        protected void select_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = select.SelectedValue;

            // Set the contact details based on the selected value
            switch (selectedValue)
            {
                case "Delivery":
                    phone.Text = "Please contact this number: 7870795889";
                    OR.Text = "OR";
                    OR.Visible = true;
                    emailid.Text = "You can ask help in Email: rk556288@gmail.com";
                    Or1.Text = "OR";
                    Or1.Visible = true;
                    twitter.Text = "You can Follow and shaire any probleam into the Twitter Handle: @rk556288";
                    break;
                case "Shopping":
                    phone.Text = "Please contact this number: 7870795889";
                    OR.Text = "OR";
                    OR.Visible = true;
                    emailid.Text = "You can ask help in Email: rk556288@gmail.com";
                    Or1.Text = "OR";
                    Or1.Visible = true;
                    twitter.Text = "You can Follow and shaire any probleam into the Twitter Handle: @rk556288";
                    break;
                case "Selling":
                    phone.Text = "Please contact this number: 7870795889";
                    OR.Text = "OR";
                    OR.Visible = true;
                    emailid.Text = "You can ask help in Email: rk556288@gmail.com";
                    Or1.Text = "OR";
                    Or1.Visible = true;
                    twitter.Text = "You can Follow and shaire any probleam into the Twitter Handle: @rk556288";
                    break;
                case "Other":
                    phone.Text = "Please contact this number: 7870795889";
                    OR.Text = "OR";
                    OR.Visible = true;
                    emailid.Text = "You can ask help in Email: rk556288@gmail.com";
                    Or1.Text = "OR";
                    Or1.Visible = true;
                    twitter.Text = "You can Follow and shaire any probleam into the Twitter Handle: @rk556288";
                    break;
                case "Feedback":
                    phone.Text = "Please contact this number: 7870795889";
                    OR.Text = "OR";
                    OR.Visible = true;
                    emailid.Text = "You can ask help in Email: rk556288@gmail.com";
                    Or1.Text = "OR";
                    Or1.Visible = true;
                    twitter.Text = "You can Follow and shaire any probleam into the Twitter Handle: @rk556288";
                    break;
                default:
                    phone.Text = "";
                    OR.Text = "";
                    emailid.Text = "";
                    Or1.Text = "";
                    twitter.Text = "";
                    break;
            }
        }
    }
}
