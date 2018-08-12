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

                foreach(var p in pay)
                {
                    PayTarget pay_newTarget = JsonConvert.DeserializeObject<PayTarget>(p);
                    ListBox1.Items.Add(new ListItem(p));
                    
                }
                //var Emp_newTarget = JsonConvert.DeserializeObject<PayTarget>(new StringReader(sub_json1)).ToList();
                
                
            }

        }
        protected void home_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home_Page.aspx", true);
        }
        protected void Paycheck_Click(object sender, EventArgs e)
        {
            //ListBox1.Items.Add(new ListItem("Carbon"));
        }
    }
}