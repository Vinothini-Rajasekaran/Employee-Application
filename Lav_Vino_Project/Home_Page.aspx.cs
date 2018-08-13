using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Lav_Vino_Project
{
    public partial class Home_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = "http://192.168.0.6/News.php";
            using (WebClient client = new WebClient())
            {
                String json = client.DownloadString(url);

                String sub_json1 = json.Substring(1, json.Length - 2);
                string nw = sub_json1.Replace("},", "}*");
                string[] pay = nw.Split('*');
                int i = 0;

                foreach (var v in pay)
                {
                    News_info news = JsonConvert.DeserializeObject<News_info>(v);
                    HyperLink link = new HyperLink();
                    link.NavigateUrl = "~/News.aspx?id="+news.info;
                    link.ID = "link"+i;
                    link.ImageUrl = news.img;
                   
                    pl.Controls.Add(link);
                    i++;
                }
            }
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