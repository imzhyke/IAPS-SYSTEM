using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace IAPS_SYSTEM
{
    public partial class Proprietor_LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInProp_Click(object sender, EventArgs e)
        {

            string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";


            string uname = usrname.Text;
            string pwd = pass.Text;

            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM PROPRIETOR WHERE PROP_USRNAME = @username AND PROP_PASS =@pwd", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@username", uname);
                    cmd.Parameters.AddWithValue("@pwd", pwd);
                    connDB.Open();

                    MySqlDataReader rd = cmd.ExecuteReader();

                    if (rd.Read())
                    {

                        Session["firstname"] = rd["PROP_FNAME"].ToString();
                        Session["role"] = "admin";

                        //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                        // "swal('Success!', 'Logged in successfuly!', 'success')", true);

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Logged in successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Prop_DashBoard.aspx\";\r\n})", true);


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