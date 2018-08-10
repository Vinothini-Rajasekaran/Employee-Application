using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lav_Vino_Project
{
    public partial class Employee_dir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void home_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home_Page.aspx",true);
        }
    }
}