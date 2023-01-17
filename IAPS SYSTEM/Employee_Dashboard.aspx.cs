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
    public partial class Employee_Dashboard : System.Web.UI.Page
    {
        string SQLConnectionString = "server=127.0.0.1;port=3306;username=root;pass=;database=iaps_db;";

        protected void Page_Load(object sender, EventArgs e)
        {

            txttdate.Text = DateTime.Now.ToShortDateString();
        }


        protected void btn_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string contact = txtCont.Text;
            string product = txtProd.Text;
            string amount = txtAmnt.Text;
            string address = txtAddress.Text;
            string date = txttdate.Text;

            if (name != "" && contact != "" && product != "" && amount != "" && address != "") { 


                    using (MySqlConnection db = new MySqlConnection(SQLConnectionString))
                {

                    using (var cmd = db.CreateCommand())
                    {
                        db.Open();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO TRANSACTION (CNAME, CONTACTNUM, ADDRESS, PRODUCT, AMT, TDATE) "
                            + " VALUES (@cname, @contactnum, @address,@product, @amt, @tdate)";
                        cmd.Parameters.AddWithValue("@cname", name);
                        cmd.Parameters.AddWithValue("@contactnum", contact);
                        cmd.Parameters.AddWithValue("@address", address);
                        cmd.Parameters.AddWithValue("@product", product);
                        cmd.Parameters.AddWithValue("@amt", amount);
                        cmd.Parameters.AddWithValue("@tdate", date);

                        var ctr = cmd.ExecuteNonQuery();

                        if (ctr >= 1)
                        {

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                             "swal({\r\n    title: \"SUCCESS\",\r\n    text: \"Transaction in successfuly!\",\r\n    icon: \"success\",\r\n    type: \"success\"\r\n}).then(function() {\r\n    window.location = \"Employee_Dashboard.aspx\";\r\n})", true);

                        }
                        else
                        {
                            Response.Write("<script>alert('Sorry, something went wrong... Please try again.')</script>");
                        }

                        db.Close();
                    }

                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                           "swal('FAILED!', 'Missing fields!', 'error')", true);
            }
        }
        protected void btn_Click2(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

            private void Page_Load()
        {
            throw new NotImplementedException();
        }
    }


}
