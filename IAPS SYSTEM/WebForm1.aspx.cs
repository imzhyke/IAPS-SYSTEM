using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace IAPS_SYSTEM
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["role"] = "";



            // string SQLConnectionString = "datasource=localhost;port=3306;username=root;pass=;database=iaps_db;";

            //MySqlConnection connection = new MySqlConnection("server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;");
            //    //MySqlDataAdapter adapter = new MySqlDataAdapter("SELECT * FROM EMPLOYEE", connection);
            //    connection.Open();
            //string query = "SELECT * FROM EMPLOYEE";
            //MySqlCommand cmd = new MySqlCommand(query, connection);

            //MySqlDataReader reader = cmd.ExecuteReader();

            //DataTable dt = new DataTable();

            //  dt.Load(reader);
            //  GridView1.DataSource= dt;

            // connection.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
            //    "swal('Good job!', 'You clicked Success button!', 'success')", true);
            gridview.Visible = true;

            using (var db = new MySqlConnection(SQLConnectionString))
            {
                db.Open();
                using (var cmd = db.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM EMPLOYEE";
                    cmd.Connection = db;
                    DataTable dt = new DataTable();
                    MySqlDataAdapter sda = new MySqlDataAdapter(cmd);
                    sda.Fill(dt);
                    gridview_report.DataSource = dt;
                    gridview_report.DataBind();
                    db.Close();
                }
            }
        }
    }
}

 
