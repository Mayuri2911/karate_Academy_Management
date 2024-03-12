using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Karateproject
{
    public class Class1
    {
        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-GEP0QJPF;Initial Catalog=Karatedatabase;Integrated Security=True");
        

        public int UpdateData(string SQLStatemnt) //insert update delete
        {
            int RowsEffected;
            SqlCommand myCommand = new SqlCommand(SQLStatemnt, con);
            con.Open();
            RowsEffected = myCommand.ExecuteNonQuery();
            con.Close();
            return RowsEffected;
        }

        public DataTable GetDataTable(string SQLStatement) //select
        {
            DataTable Dttemp = new DataTable();
            Dttemp.Clear();
            con.Open();
            SqlDataAdapter Da = new SqlDataAdapter(SQLStatement, con);
            Da.Fill(Dttemp);
            con.Close();
            return Dttemp;
        }
    }
}