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
    public partial class Personal_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = Session["Name"].ToString();
            //name.Text = str;
            string url = "http://192.168.0.6/personal_info.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection uname = new NameValueCollection() {
                {"username", Session["Name"].ToString() },
               
            };
                String json = Encoding.UTF8.GetString(client.UploadValues(url, uname));

                //Target newTarget = JsonConvert.DeserializeObject<Target>(json);
                Target newTarget = JsonConvert.DeserializeObject<Target>(json.Substring(1, json.Length - 2));

                eno.Text = newTarget.emp_no;
                
                fname.Text = newTarget.first_name;
                
                lname.Text = newTarget.last_name;
               
                bday.Text = newTarget.birth_date;
                
                gender.Text = newTarget.gender;
                
                hdate.Text = newTarget.hire_date;
              
                dname.Text = newTarget.dept_name;
              

            };

                
            
        }
        protected void home_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home_Page.aspx", true);
        }
    }
}