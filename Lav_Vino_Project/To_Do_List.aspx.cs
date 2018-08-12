using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lav_Vino_Project
{
    public partial class To_Do_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void add_Click(object sender, EventArgs e)
        {
            string url = "http://192.168.0.6/To_do_list.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection to_do_info = new NameValueCollection() {
                {"taskname", tname.Text},
                { "duration", duration.Text},
                { "start_date", sdate.Text},
                { "end_date", edate.Text},
                { "status", status.Text},
                { "desc", desc.Text},
                {"emp_no",emp_no.Text }
            };

                String pagesource = Encoding.UTF8.GetString(client.UploadValues(url, to_do_info));

               
                if (String.Compare(pagesource, "success") == 1)
                {
                    Server.Transfer("Home_Page.aspx", true);
                }
                else
                {
                    Server.Transfer("Login.aspx", true);
                }
            }

        }
    }
}