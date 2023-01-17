using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IAPS_SYSTEM
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                if (Session["role"].Equals("user"))
                {
                    empLogged.Visible = true;
                    empLogged.Text = "Employee: "+ Session["firstname"].ToString();
                    empLogBtn.Visible = true;
                    adminLogged.Visible = false;
                    adminLogBtn.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    empLogged.Visible = false;
                    empLogBtn.Visible = false;
                    adminLogged.Visible = true;
                    adminLogged.Text = "Admin: " + Session["firstname"].ToString(); ;
                    adminLogBtn.Visible = true;
            }
                else
                {
                    empLogged.Visible = false;
                    empLogBtn.Visible=false;
                    adminLogged.Visible = false;
                    adminLogBtn.Visible = false;
                }
            
           
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["role"] = "";
            Response.Redirect("Landing_Page.aspx");
        }

        protected void adminLogBtn_Click(object sender, EventArgs e)
        {
            Session["role"] = "";
            Response.Redirect("Landing_Page.aspx");
        }
    }
}