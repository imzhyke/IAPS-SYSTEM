using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using MySql.Data.MySqlClient;

namespace IAPS_SYSTEM
{
    public partial class CreateAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void txtbdate_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtusrn_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btn_Click1(object sender, EventArgs e)
        {
            string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";



            string lName = txtLname.Text;
            string fname = txtFname.Text;
            string bdate = txtbdate.Text;
            string uname = txtusrn.Text;
            string pwd = txtpwd.Text;

            if( lName != "" && fname != "" && bdate != "" && uname != "" && pwd != "")
            {
               
            

                using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
                {

                    using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM EMPLOYEE WHERE EMP_USRNAME = @username", connDB))
                    {


                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@username", uname);
                        connDB.Open();
                        MySqlDataReader rd = cmd.ExecuteReader();

                        if (rd.HasRows)
                        {

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                             "swal('FAILED!', 'Username is already use!', 'error')", true);


                            rd.Close();
                        }
                        else
                        {
                            rd.Close();
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "INSERT INTO EMPLOYEE (EMP_LNAME, EMP_FNAME, EMP_BDAY, EMP_USRNAME, EMP_PASS) "
                                + " VALUES (@lName, @fName, @bdate,@uname, @pwd)";
                            cmd.Parameters.AddWithValue("@lName", lName);
                            cmd.Parameters.AddWithValue("@fName", fname);
                            cmd.Parameters.AddWithValue("@bdate", bdate);
                            cmd.Parameters.AddWithValue("@uname", uname);
                            cmd.Parameters.AddWithValue("@pwd", pwd);

                            var ctr = cmd.ExecuteNonQuery();

                            if (ctr >= 1)
                            {

                                //cmd.CommandType = CommandType.Text;
                                //cmd.CommandText = "INSERT INTO TRANSACTBL (TDATE, AMT, EMAIL, TYPE, SENDTO) "
                                //    + " VALUES (@date,@amt,@email,@type,@sendto)";
                                //cmd.Parameters.AddWithValue("@date", DateTime.Now);

                                //cmd.Parameters.AddWithValue("@type", type);
                                //cmd.Parameters.AddWithValue("@sendto", sendto);

                                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                 "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Account created successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"EMPLOYEE_LOGIN.aspx\";\r\n})", true);
                                //Response.Redirect("EMPLOYEE_LOGIN.aspx");

                            }
                            else
                            {
                                Response.Write("<script>alert('Sorry, something went wrong... Please try again.')</script>");
                            }

                        }
                        connDB.Close();
                    }
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                           "swal('FAILED!', 'Missing fields!', 'error')", true);
            }

        }
    }
    }