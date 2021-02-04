using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myFirst1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            protected void btnSubmit_Click(object sender, EventArgs e)
            {
                Response.Write(txtName.Text + "</br>");

                Response.Write(lstLocation.SelectedItem.Text + "</br>");

                lblName.Visible = false;
                lstLocation.Visible = false;
                chkC.Visible = false;
                lstLocation.Visible = false;
            }
        }
    }
}