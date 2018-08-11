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
    public partial class Employee_dir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = ((TextBox)form1.FindControl("Search_name")).Text;
            string url = "http://192.168.0.6/Employee_info.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection firstname = new NameValueCollection() {
                {"firstname", str},

            };
                String json1 = Encoding.UTF8.GetString(client.UploadValues(url, firstname));

                //Target Emp_newTarget = JsonConvert.DeserializeObject<Target>(json);
                
                Target Emp_newTarget = JsonConvert.DeserializeObject<Target>(json1.Substring(1, json1.Length - 2));

                //Emp_img.ImageUrl = Emp_newTarget.image;

                eno.Text = Emp_newTarget.emp_no;

                fname.Text = Emp_newTarget.first_name;

                lname.Text = Emp_newTarget.last_name;

                bday.Text = Emp_newTarget.birth_date;

                gender.Text = Emp_newTarget.gender;

                hdate.Text = Emp_newTarget.hire_date;

                dname.Text = Emp_newTarget.dept_name;


            };



        }
        protected void home_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home_Page.aspx", true);
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Server.Transfer("Login.aspx", true);
        }
        protected void Search_Click(object sender, EventArgs e)
        {
            search1.Visible = false;
            Table1.Visible = true;
            //Emp_img.Visible = true;
        }
    }
}