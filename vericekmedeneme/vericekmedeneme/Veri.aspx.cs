using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using HtmlAgilityPack;
using System.Text;

namespace vericekmedeneme
{
    public partial class Veri : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Uri url = new Uri("https://canlidoviz.com/");
            WebClient client = new WebClient();
            string html = client.DownloadString(url);
            HtmlAgilityPack.HtmlDocument dokuman = new HtmlAgilityPack.HtmlDocument();
            dokuman.LoadHtml(html);

            string veri1 = dokuman.DocumentNode.SelectNodes("//*[@id='USD_renk']")[0].InnerText;
            string veri2 = dokuman.DocumentNode.SelectNodes("//*[@id='EUR_renk']")[0].InnerText;
            string veri3 = dokuman.DocumentNode.SelectNodes("//*[@id='Altin_GA_alis']")[0].InnerText;
        
            
            Label1.Text =veri1;
            Label2.Text = veri2;
            Label3.Text = veri3;

            //Response.AppendHeader("Refresh", "5");

            


        }
        //public void vericek(String Url, String XPath, Label CikanSonuc)
        //{
        //    try
        //    {
        //        url = new Uri(Url);
        //    }
        //    catch (UriFormatException)
        //    {
        //        Response.Write("<script>alert('hata text');</script>");
        //    }
        //    catch (ArgumentNullException)
        //    {
        //        Response.Write("<script>alert('hata text');</script>");
        //    }
        //    WebClient client = new WebClient();
        //    client.Encoding = Encoding.UTF8;
        //    try
        //    {
        //        html = client.DownloadString(url);
        //    }
        //    catch (WebException)
        //    {
        //        Response.Write("<script>alert('hata text');</script>");
        //    }
        //    HtmlAgilityPack.HtmlDocument doc = new HtmlAgilityPack.HtmlDocument();
        //    doc.LoadHtml(html);
        //    try
        //    {
        //        Label1.Text = doc.DocumentNode.SelectNodes(XPath)[0].InnerText;
        //        Label2.Text = doc.DocumentNode.SelectNodes(XPath)[0].InnerText;
        //        Label3.Text = doc.DocumentNode.SelectNodes(XPath)[0].InnerText;
        //    }
        //    catch (NullReferenceException)
        //    {
        //        Response.Write("<script>alert('xpath text');</script>");
        //    }
            

        //}
    }
}