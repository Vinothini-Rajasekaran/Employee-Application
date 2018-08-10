using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lav_Vino_Project
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void personal_info_Click(object sender, EventArgs e)
        {
            Server.Transfer("Personal_Info.aspx",true);
        }

        protected void employee_dir_Click(object sender, EventArgs e)
        {
            Server.Transfer("Employee_Dir.aspx", true);
        }

        protected void notifications_Click(object sender, EventArgs e)
        {
            Server.Transfer("Notifications.aspx", true);
        }

        protected void to_do_list_Click(object sender, EventArgs e)
        {
            Server.Transfer("To_Do_List.aspx", true);
        }

        protected void paycheck_Click(object sender, EventArgs e)
        {
            Server.Transfer("Paycheck.aspx", true);
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx", true);
        }
    }
}