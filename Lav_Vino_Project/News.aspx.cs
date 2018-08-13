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
    public partial class News : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string url = "http://192.168.0.6/News_display.php";
            using (WebClient client = new WebClient())
            {
                NameValueCollection uname = new NameValueCollection() {
                {"desc", id }

            };
                String json = Encoding.UTF8.GetString(client.UploadValues(url, uname));
                News_info d = JsonConvert.DeserializeObject<News_info>(json.Substring(1, json.Length - 2));

                image.ImageUrl = d.img;
                text.Text = d.info;
            }
        }
    }
}