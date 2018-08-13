using System;
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
            string url = "http://192.168.0.6/login.php";
            Session["Name"] = username.Text;
            using (WebClient client = new WebClient())
            {
                NameValueCollection login_info = new NameValueCollection() {
                {"username", username.Text},
                { "password", password.Text}
            };

                String pagesource = Encoding.UTF8.GetString(client.UploadValues(url, login_info));

                if (pagesource == "success")
                {
                    Server.Transfer("Home_Page.aspx", true);
                }
                else
                {
                    Response.Write("<script type='text/javascript'>");
                    Response.Write("alert('Invalid username or password');");
                    Response.Write("</script>");
                }
            }
           
            
        }
    }
}