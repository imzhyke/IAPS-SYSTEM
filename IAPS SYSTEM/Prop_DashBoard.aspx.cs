using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace IAPS_SYSTEM
{
    public partial class Prop_DashBoard : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";

        protected void Page_Load(object sender, EventArgs e)
        {

  
            editBtn.Visible = false;
            saveBtn.Visible = false;
            delBtn.Visible = false;

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
        protected void SrchBtn_Click(object sender, EventArgs e)
        {

      
            string uname = usrname.Text;
           
            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM EMPLOYEE WHERE EMP_USRNAME = @username", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@username", uname);
                    connDB.Open();
                    MySqlDataReader rd = cmd.ExecuteReader();

                    if (rd.Read())
                    {
                        fname.Text = rd["EMP_FNAME"].ToString();
                        lname.Text = rd["EMP_LNAME"].ToString();
                        pass.Text = rd["EMP_PASS"].ToString();

                        editBtn.Visible = true;
                        delBtn.Visible = true;

                        rd.Close();
                    }
                    else
                    {

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                         "swal('Failed!', 'User not found!', 'error')", true);

                    }

                    connDB.Close();
                }
            }




        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            editBtn.Visible = false;
            saveBtn.Visible = true;
            lname.Enabled = true;
            fname.Enabled = true;
            pass.Enabled = true;
            usrname.Enabled = false;
            srchBtn.Visible = false;
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            string lastname = lname.Text;
            string firstname = fname.Text;
            string password = pass.Text;
            string username = usrname.Text;
            usrname.Enabled = true;
            srchBtn.Enabled = true;



            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("UPDATE EMPLOYEE SET EMP_LNAME = @LN, EMP_FNAME = @FN, EMP_PASS = @PASS WHERE EMP_USRNAME = @username", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@LN", lastname);
                    cmd.Parameters.AddWithValue("@FN", firstname);
                    cmd.Parameters.AddWithValue("@PASS", password);
                    cmd.Parameters.AddWithValue("@username", username);
                    connDB.Open();

                    //MySqlDataReader rd = cmd.ExecuteReader();
                    var ctr = cmd.ExecuteNonQuery();


                    if (ctr >= 1)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"UPDATED!\",\r\n    text: \"Updated successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Prop_DashBoard.aspx\";\r\n})", true);

                    }

                    connDB.Close();

                connDB.Close();
                }
            }



        }

        protected void DelBtn_Click(object sender, EventArgs e)
        {


            string username = usrname.Text;
            using (MySqlConnection connDB = new MySqlConnection(SQLConnectionString))
            {

                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM employee WHERE EMP_USRNAME = @username", connDB))
                {

                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@username", username);
                    connDB.Open();

                    //MySqlDataReader rd = cmd.ExecuteReader();
                    var ctr = cmd.ExecuteNonQuery();


                    if (ctr >= 1)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal({\r\n    title: \"Deleted!\",\r\n    text: \"Deleted successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Prop_DashBoard.aspx\";\r\n})", true);

                    }

                    connDB.Close();

                    connDB.Close();
                }
            }


        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void ViewTrans1_Click(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }
    }
}