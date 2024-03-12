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
    public partial class Matchform : System.Web.UI.Page
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
            str = "select * from matchform";
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
            str = "insert into matchform (m_matchname,m_date,m_discription) values('" + txtMatch.Text + "','" + txtDate.Text + "','" + txtDescription.Text + "')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Match Form Submitted')</script>");
            con.Close();
            clear();
            getData();

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
             txtMatch.Text="";
             txtDate.Text ="";
            txtDescription.Text="";
            txtid.Text = "";
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            str = "";
            str = "delete from  matchform where m_id='" + txtid.Text + "' ";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            //MessageBox.Show("Data submited Succsfully");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Match form Deleted successfully')</script>");

            con.Close();
            clear();
            getData();
        }

        protected void btnSelect_Command(object sender, CommandEventArgs e)
        {
            DataTable dt1 = new DataTable();
            txtid.Text = e.CommandArgument.ToString();
            str = "select * from matchform where m_id='" + e.CommandArgument.ToString() + "' ";
            con.Open();
            sda = new SqlDataAdapter(str, con);
            sda.Fill(dt1);
            con.Close();
            if (dt1.Rows.Count > 0)
            {
                txtMatch.Text = dt1.Rows[0]["m_matchname"].ToString();
                txtDate.Text = dt1.Rows[0]["m_date"].ToString();
                txtDescription.Text = dt1.Rows[0]["m_discription"].ToString();

            }
        }

        protected void btnApplyMatch_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewApplyMatch.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            str = "";

            str = "Update matchform set m_matchname='" + txtMatch.Text + "' , m_date='" + txtDate.Text + "', m_discription='" + txtDescription.Text + "' where m_id='" + txtid.Text + "' ";


            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            //MessageBox.Show("Data submited Succsfully");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Match form Deleted successfully')</script>");

            con.Close();
            clear();
            getData();
        }
    }
}
