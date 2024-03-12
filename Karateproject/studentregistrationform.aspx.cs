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
    public partial class studentregistrationform : System.Web.UI.Page
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
            str = "insert into studentregister (s_firstname,s_lastname,s_dob,s_mobilenumber,s_emailid,s_gender,s_address,s_coachassign,s_batchtime,s_username,s_password) values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtDOB.Text + "','" + txtMobileNumber.Text + "','" + txtEmailID.Text + "','" + drdGender.Text + "','" + txtAddress.Text + "','" + drdCoachAssign.Text + "','" + drdBatchTime.Text + "','" + TxtUsername.Text + "','" + TxtPassword.Text + "')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            MessageBox.Show("Data submited Succsfully");
            //Response.Write("<script LANGUAGE='JavaScript' >alert('Registration is submitted')</script>");
            con.Close();
            clear();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            txtFirstName.Text="";
            txtLastName.Text="";
            txtDOB.Text="";
            txtMobileNumber.Text="";
            txtEmailID.Text="";
            drdGender.Text="";
            txtAddress.Text="";
            drdCoachAssign.SelectedIndex=0;
            drdBatchTime.Text="";
            TxtUsername.Text="";
            TxtPassword.Text="";
        


        }

        
    }
}