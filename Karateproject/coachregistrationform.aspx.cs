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
    public partial class coachregistrationform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        String str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }

        public void getData()
        {
            DataTable dt = new DataTable();
            str = "";
            str = "select * from CoachTable";
            con.Open();
            sda = new SqlDataAdapter(str,con);
            sda.Fill(dt);
            con.Close();
            gvData.DataSource = dt;
            gvData.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            str = "";
            str = "insert into CoachTable (c_Name,c_emailid,c_DOB,c_mobile,c_City,c_address,c_salary,c_batchtime,c_belt,c_experience,c_username,c_password) values('" + txtName.Text + "','" + txtEmailID.Text + "','" + txtDOB.Text + "','" + txtmobileno.Text + "','" + drdCity.Text + "','" + txtAddress.Text + "','" + txtSalary.Text + "','" + drdBatchtime.Text + "','" + drdBelt.Text + "','" + drdexperience.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "')";
            cmd = new SqlCommand(str,con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Coach Registration Form Submitted')</script>");
            con.Close();
            clear();
            getData();
            

        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            txtName.Text = "";
            txtEmailID.Text = "";
            txtDOB.Text = "";
            txtmobileno.Text = "";
            drdCity.Text = "";
            txtAddress.Text = "";
            txtSalary.Text = "";
            drdBatchtime.Text = "";
            drdBelt.Text = "";
            drdexperience.Text = "";
            txtUsername.Text = "";
            txtPassword.Text = "";
            txtid.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            str = "";
            str = "delete from CoachTable where c_id='" + txtid.Text + "' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Coach Registration Deleted succfully')</script>");
            con.Close();
            clear();
            getData();
        }

        protected void btnSelect_Command(object sender, CommandEventArgs e)
        {
            DataTable dt1 = new DataTable();
            txtid.Text = e.CommandArgument.ToString();
            str = "select * from CoachTable where c_id='"+e.CommandArgument.ToString()+"' ";
            con.Open();
            sda = new SqlDataAdapter(str, con);
            sda.Fill(dt1);
            con.Close();
            if (dt1.Rows.Count > 0)
            {
                txtName.Text = dt1.Rows[0]["c_name"].ToString();
                txtEmailID.Text = dt1.Rows[0]["c_emailid"].ToString();
                txtDOB.Text = dt1.Rows[0]["c_DOB"].ToString();
                txtmobileno.Text = dt1.Rows[0]["c_mobile"].ToString();
                drdCity.Text = dt1.Rows[0]["c_city"].ToString();
                txtAddress.Text = dt1.Rows[0]["c_address"].ToString();
                txtSalary.Text = dt1.Rows[0]["c_salary"].ToString();
                drdBatchtime.Text = dt1.Rows[0]["c_batchtime"].ToString();
                drdBelt.Text = dt1.Rows[0]["c_belt"].ToString();
                drdexperience.Text = dt1.Rows[0]["c_experience"].ToString();
                txtUsername.Text = dt1.Rows[0]["c_username"].ToString();
                txtPassword.Text = dt1.Rows[0]["c_password"].ToString();

            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            str = "";
            str = "Update CoachTable set c_name='" + txtName.Text + "' , c_emailid='" + txtEmailID.Text + "', c_DOB='" + txtDOB.Text + "', c_mobile='" + txtName.Text + "', c_city='" + drdCity.Text + "', c_address='" + txtAddress.Text + "', c_salary='" + txtSalary.Text + "', c_batchtime='" + drdBatchtime.Text + "', c_belt='" + drdBelt.Text + "', c_experience='" + drdexperience.Text + "', c_username='" + txtUsername.Text + "', c_password='" + txtPassword.Text + "' where c_id='" + txtid.Text + "' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Coach Registration Update succfully')</script>");
            con.Close();
            clear();
            getData();
        }
    }
}
