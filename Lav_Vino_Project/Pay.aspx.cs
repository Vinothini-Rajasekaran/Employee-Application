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
    public partial class Pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string f_date = Request.QueryString["id"];
            string url = "http://192.168.0.6/Pay.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection t_name = new NameValueCollection() {
                {"fromdate", f_date },

            };
                String json = Encoding.UTF8.GetString(client.UploadValues(url, t_name));


                Pay_info t = JsonConvert.DeserializeObject<Pay_info>(json.Substring(1, json.Length - 2));

                fdate.Text = t.from_date;
                tdate.Text = t.to_date;
                salary.Text = t.salary;
                ftax.Text = t.federal_tax;
                stax.Text = t.state_tax;
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