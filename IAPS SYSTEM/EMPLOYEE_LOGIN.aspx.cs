using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace IAPS_SYSTEM
{
    public partial class EMPLOYEE_LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLOGIN_Click(object sender, EventArgs e)
        {
            string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";


            string uname = txtUserName.Text;
            string pwd = txtPassword.Text;
            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM EMPLOYEE WHERE EMP_USRNAME = @username AND EMP_PASS =@pwd", connDB))
                {


                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@username", uname);
                    cmd.Parameters.AddWithValue("@pwd", pwd);
                    connDB.Open();
                    MySqlDataReader rd = cmd.ExecuteReader();

                    if (rd.Read())
                    {

                        Session["firstname"] = rd["EMP_FNAME"].ToString();
                        Session["role"] = "user";

                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                        // "swal('Success!', 'Logged in successfuly!', 'success')", true);

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Employee_Dashboard.aspx\";\r\n})", true);


                        rd.Close();
                    }
                    else
                    {

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                         "swal('Failed!', 'Failed to Log In!', 'error')", true);

                    }
                   
                    connDB.Close();
                }
            }
        }
    }
}