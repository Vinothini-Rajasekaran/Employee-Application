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
    public partial class Notifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["Name"].ToString();

            string url = "http://192.168.0.6/Notifications.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection uname = new NameValueCollection() {
                {"username", Session["Name"].ToString() },

            };
                String json = Encoding.UTF8.GetString(client.UploadValues(url, uname));
                string[] split = { "," };
                string temp = json.Substring(1, json.Length-2);

                string[] res = temp.Split(split,StringSplitOptions.None);

                int i = 0;
                foreach(var r in res)
                {
                  Notify st = JsonConvert.DeserializeObject<Notify>(r);
                    HyperLink link = new HyperLink();
                    link.ID = "link" + i;
                    link.ForeColor = System.Drawing.Color.White;
                    link.Text = st.task_name + "<br/><br/>";
                    link.NavigateUrl = "Link.aspx?id=" + st.task_name;
                    ph.Controls.Add(link);
                    i++;
                }
  

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