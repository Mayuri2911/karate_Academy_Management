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
    public partial class matchfeedback : System.Web.UI.Page
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
            str = "insert into matchfeedback (m_matchname,m_description) values('" + drdMatchName.Text + "','" + txtDescription.Text + "')";
            cmd = new SqlCommand(str, con);
            con.Open();
            cmd.ExecuteNonQuery();
            
            Response.Write("<script LANGUAGE='JavaScript' >alert('Enquiry form is send')</script>");

            con.Close();
            clear();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            clear();
        }
        public void clear()
        {
            drdMatchName.Text = "";
            txtDescription.Text = "";
        }
    }
}