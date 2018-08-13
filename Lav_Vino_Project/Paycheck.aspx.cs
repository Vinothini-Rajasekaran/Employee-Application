using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lav_Vino_Project
{
    public partial class Paycheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string emp_name = Session["Name"].ToString();
            string url = "http://192.168.0.6/Paycheck_info.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection uname = new NameValueCollection() {
                {"username", emp_name},

            };
                String json1 = Encoding.UTF8.GetString(client.UploadValues(url, uname));
                String sub_json1 = json1.Substring(1, json1.Length - 2);
                //var jarray = JsonArray.Parse(sub_json1);
                string nw = sub_json1.Replace("},","}.");
              

                String[] split = { "." };
                string[] pay = nw.Split('.');
                int i = 0;

                foreach(var p in pay)
                {
                    PayTarget pay_info = JsonConvert.DeserializeObject<PayTarget>(p);
                    HyperLink link = new HyperLink();
                    link.ID = "link" + i;
                    link.ForeColor = System.Drawing.Color.White;
                    link.Text = pay_info.from_date +" to " +pay_info.to_date+"<br/><br/>";
                    link.NavigateUrl = "Pay.aspx?id=" + pay_info.from_date;
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