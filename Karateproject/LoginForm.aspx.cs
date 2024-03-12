using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Karateproject
{
    public partial class LoginForm : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        String str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text == "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please enter Username')</script>");
            }
            else 
                if (txtPassword.Text == "")
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Please enter Password')</script>");
            }
            else
            {
                if (drdAdmin.Text == "Admin")
                {
                    if (txtUserName.Text == "Admin" && txtPassword.Text == "jay")
                    {
                        Response.Redirect("coachregistrationform.aspx");
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Please enter correct Username & Password')</script>");
                    }
                }
                else if (drdAdmin.Text == "Student")
                {
                    str = "select * from studentregister where s_username='"+txtUserName.Text+"' and s_password='"+txtPassword.Text+"' ";
                    con.Open();
                    sda = new SqlDataAdapter(str, con);
                    sda.Fill(dt);
                    con.Close();
                    if (dt.Rows.Count > 0)
                    {
                        Session["Id"] = dt.Rows[0]["s_id"].ToString();
                        Response.Redirect("ProfileForm.aspx");
                    }
                    else
                    {
                        Response.Write("<script LANGUAGE='JavaScript' >alert('Please enter correct Username & Password')</script>");
                    }
                }
            }
            

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentregistrationform.aspx");
        }
    }
}