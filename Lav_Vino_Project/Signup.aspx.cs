using System;
using System.Collections.Specialized;
using System.Net;
using System.Text;

namespace Lav_Vino_Project
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            string url = "http://192.168.0.6/Sign_up.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection signup_info = new NameValueCollection() {
                {"username", signup_username.Text},
                { "password", signup_password.Text},
                { "employee_id", signup_eid.Text}
            };

                String pagesource = Encoding.UTF8.GetString(client.UploadValues(url, signup_info));

                if (String.Compare(pagesource,"success")==1)
                {
                    Server.Transfer("Login.aspx", true);
                }
            }


        }
    }
}