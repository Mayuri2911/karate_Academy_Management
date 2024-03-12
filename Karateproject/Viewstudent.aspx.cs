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
    public partial class Viewstudent : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-CTDMAAC7;Initial Catalog=Karatedatabase;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        String str = "";

        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            getData();
        }
        public void getData()
        {
            str = "";
            str = "select * from studentregister";
            con.Open();
            sda = new SqlDataAdapter(str, con);
            sda.Fill(dt);
            con.Close();
            gvData.DataSource = dt;
            gvData.DataBind();

        }
    }
}