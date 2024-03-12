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
    public partial class WebForm1 : System.Web.UI.Page
    {
        Class1 jay = new Class1();
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        String str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();

            
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "select ID,Name,DOB,Study,Gender from regi1";

            DataTable result = jay.GetDataTable(str);
            GridView1.DataSource = result;
            GridView1.DataBind();   
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            str = "";
            str = "insert into regi1(Name,DOB,Study,Gender) values('" + txtname.Text + " ', '" + txtdob.Text + " ','" + drdstudy.Text + " ','" + rblist.Text + " ')";
            jay.UpdateData(str);
            MessageBox.Show("Data Submitted Successfully");                
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            str = "";
            str = "update regi1 set name='" + txtname.Text + "',surname='" + txtname.Text + "' where id='" + txtid.Text + "' ";
            jay.UpdateData(str);
            MessageBox.Show("Data Updated Successfully");           
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            str = "";
            str = "delete from regi1 where id='" + txtid.Text + "' ";
            jay.UpdateData(str);
            MessageBox.Show("Data Delete Successfully");                                  
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            string id = ((sender as LinkButton).CommandArgument).ToString();
            txtid.Text = id;

            str = "select * from regi1 where id='" + txtid.Text + "' ";
            DataTable dtData = jay.GetDataTable(str);

            txtname.Text = dtData.Rows[0]["name"].ToString();
        }
    }
}