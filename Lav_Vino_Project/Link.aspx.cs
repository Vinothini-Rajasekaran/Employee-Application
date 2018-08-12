using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Lav_Vino_Project
{
    public partial class Link : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            /*Label label = new Label();
            label.Text = id;
            this.Controls.Add(label);*/

            string url = "http://192.168.0.6/Link.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection t_name = new NameValueCollection() {
                {"taskname", id },

            };

                String json = Encoding.UTF8.GetString(client.UploadValues(url, t_name));

                
                Task_info t = JsonConvert.DeserializeObject<Task_info>(json.Substring(1, json.Length - 2));

                tname.Text = t.task_name;
                duration.Text = t.duration;
                sdate.Text = t.start_date;
                edate.Text = t.end_date;
                status.Text = t.status;

            }
        }

        protected void home_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home_Page.aspx", true);
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx", true);
        }
    }
}