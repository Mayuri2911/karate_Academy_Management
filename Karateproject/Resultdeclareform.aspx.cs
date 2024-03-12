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
    public partial class Resultdeclareform : System.Web.UI.Page
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
            str = "select * from resultdeclare";
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
            str = "insert into resultdeclare (r_matchname,r_matchwinner) values('" + txtMatchName.Text + "','" + txtMatchWinner.Text + "')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Result Declared')</script>");
            getData();
            clear();
        }

        protected void btnSelect_Command(object sender, CommandEventArgs e)
        {
            DataTable dt1 = new DataTable();
            txtid.Text = e.CommandArgument.ToString();
            str = "select * from resultdeclare where r_id='" + e.CommandArgument.ToString() + "' ";
            con.Open();
            sda = new SqlDataAdapter(str, con);
            sda.Fill(dt1);
            con.Close();
            if (dt1.Rows.Count > 0)
            {
                txtMatchName.SelectedValue = dt1.Rows[0]["r_matchname"].ToString();
                txtMatchWinner.Text = dt1.Rows[0]["r_matchwinner"].ToString();

            }
        }

        public void clear()
        {
            txtMatchName.SelectedIndex = 0;
            txtMatchWinner.Text = "";
            txtid.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            str = "";

            str = "Update resultdeclare set r_matchname='" + txtMatchName.Text + "' , r_matchwinner='" + txtMatchWinner.Text + "' where r_id='" + txtid.Text + "' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            //MessageBox.Show("Data submited Succsfully");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Match form Deleted successfully')</script>");

            con.Close();
            clear();
            getData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            str = "";
            str = "delete from  resultdeclare where r_id='" + txtid.Text + "' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Match form Deleted successfully')</script>");
            con.Close();
            clear();
            getData();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}