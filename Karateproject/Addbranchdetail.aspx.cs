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
    public partial class Addbranchdetail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            str = "";
            str = "select * from addbranch";
            con.Open();
            sda = new SqlDataAdapter(str, con);
            sda.Fill(dt);
            con.Close();
            gvData.DataSource = dt;
            gvData.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            str = "";
            str = "insert into addbranch (a_location,a_address,a_branchtiming) values('" + txtLocation.Text + "','" + txtAddress.Text + "','" + drdBranchTiming.Text+"')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Branch Details Submitted')</script>");
            con.Close();
            btnCancel_Click(sender, e);


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtLocation.Text = "";
            txtAddress.Text = "";
            drdBranchTiming.Text = "";
        }
        

        

        }
    }
