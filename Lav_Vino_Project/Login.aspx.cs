using System;
using System.Net.Http;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http.Headers;
using System.Collections.Specialized;
using System.Text;
using System.Net;
using System.IO;

namespace Lav_Vino_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string url = "http://localhost/login.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection login_info = new NameValueCollection() {
                {"username", username.Text},
                { "password", password.Text}
            };

                String pagesource = Encoding.UTF8.GetString(client.UploadValues(url, login_info));

                if (pagesource == "success")
                {
                    Server.Transfer("Signup.aspx", true);
                }
            }
           
            
        }
    }
}