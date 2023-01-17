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
    public partial class History : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";
        protected void Page_Load(object sender, EventArgs e)
        {

            gridview.Visible = true;

            using (var db = new MySqlConnection(SQLConnectionString))
            {
                db.Open();
                using (var cmd = db.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM TRANSACTION";
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