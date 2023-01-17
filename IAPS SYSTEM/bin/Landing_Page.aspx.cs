using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IAPS_SYSTEM
{
    public partial class Landing_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["role"] = "";
        }


        //protected void empLogBut_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("EMPLOYEE LOGIN");
        //}

        protected void propLogBut_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Proprietor_LogIn");
        }
    }
}