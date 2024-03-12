using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Karateproject
{
    public partial class enquiry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        String str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            str = "";
            str = "insert into enquiryta (e_firstname,e_lastname,e_emailid,e_message,e_additionaldetails) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmailID.Text + "','" + txtMessage.Text + "','" + txtAdditionalDetails.Text + "')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Enquiry form is send')</script>");

            con.Close();
            clear();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }

        public void clear()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmailID.Text = "";
            txtMessage.Text = "";
            txtAdditionalDetails.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            str = "";
            str = "delete from enquiryta where id='"+Session["id"].ToString()+"' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            //MessageBox.Show("Data submited Succsfully");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Enquiry Deleted succfully')</script>");

            con.Close();
            clear();

        }

    }
}