using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=localhost\SQLEXPRESS;Trusted_Connection=True;Database=myFirst ;User ID=admin;Password=admin";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            Response.Write("Connection Made");
            cnn.Close();

            /*
                        SqlCommand command;
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        String sql = "";
                        sql = "Insert into demo_tb(TutorialID,TutorialName) value(3, \"VB.Net\")";
                        command = new SqlCommand(sql, cnn);
                        adapter.InsertCommand = new SqlCommand(sql, cnn);
                        adapter.InsertCommand.ExecuteNonQuery();
                        command.Dispose(); 
                        cnn.Close();*/



        }






        protected void btnSubmit_Click(object sender, EventArgs e)

        {
            Session["Name"] = txtName.Text;


            Response.Write(txtName.Text + "</br>");
            Response.Write(lstLocation.SelectedItem.Text + "</br>");

            lblName.Visible = false;
            txtName.Visible = false;
            lstLocation.Visible = false;
            chkC.Visible = false;
            chkASP.Visible = false;
            btnSubmit.Visible = false;
        }
    }
}