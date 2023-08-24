using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assign10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LblConfirmation.Visible = false;
            }
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            // Retrieve form values and display confirmation message
            string productName = TxtName.Text;
            string category = DdlCategory.SelectedValue;
            decimal price = Convert.ToDecimal(TxtPrice.Text);
            string description = TxtDescription.Text;
            DateTime releaseDate = CalendarReleaseDate.SelectedDate;

            // Format and display the confirmation message
            LblConfirmation.Visible = true;
            LblConfirmation.Text = "Product Registered Successfully!" +
                "<br />Product Name: " + productName +
                "<br />Category: " + category +
                "<br />Price: " + price.ToString("C2") +
                "<br />Description: " + description +
                "<br />Release Date: " + releaseDate.ToString("MMMM dd, yyyy");

        }

    
    }
}