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

            Uri url = new Uri("https://www.bloomberght.com/doviz");
            WebClient client = new WebClient();
            string html = client.DownloadString(url);
            HtmlAgilityPack.HtmlDocument dokuman = new HtmlAgilityPack.HtmlDocument();
            dokuman.LoadHtml(html);

            Uri url2 = new Uri("https://www.bloomberght.com/emtia");
            WebClient client2 = new WebClient();
            string html2 = client2.DownloadString(url2);
            HtmlAgilityPack.HtmlDocument dokuman2 = new HtmlAgilityPack.HtmlDocument();
            dokuman2.LoadHtml(html2);

            Uri url3 = new Uri("http://bigpara.hurriyet.com.tr/altin/ceyrek-altin-fiyati/");
            WebClient client3 = new WebClient();
            string html3 = client3.DownloadString(url3);
            HtmlAgilityPack.HtmlDocument dokuman3 = new HtmlAgilityPack.HtmlDocument();
            dokuman3.LoadHtml(html3);

            Uri url4 = new Uri("https://www.bloomberght.com/altin");
            WebClient client4 = new WebClient();
            string html4 = client4.DownloadString(url4);
            HtmlAgilityPack.HtmlDocument dokuman4 = new HtmlAgilityPack.HtmlDocument();
            dokuman4.LoadHtml(html4);

            Uri urlhaber = new Uri("https://www.sondakika.com/ekonomi/");
            WebClient clienthaber = new WebClient();
            string htmlhaber = clienthaber.DownloadString(urlhaber);
            HtmlAgilityPack.HtmlDocument dokumanhaber = new HtmlAgilityPack.HtmlDocument();
            dokumanhaber.LoadHtml(htmlhaber);


            //dokumanhaber.Load(clienthaber.OpenRead(htmlhaber), Encoding.UTF8);


            //*[@id="dolar"]/div[3]/span/i
            //Alıs

            string dolar = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[2]/td[2]")[0].InnerText;
            string euro = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[3]/td[2]")[0].InnerText;
            string altin = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[5]/td[2]")[0].InnerText;

            //alışlar ve satışlar
            string adolarsatis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[2]/td[3]")[0].InnerText;
            string aeurosatis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[3]/td[3]")[0].InnerText;
            string asterlinalis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[4]/td[2]")[0].InnerText;
            string asterlinsatis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[4]/td[3]")[0].InnerText;
            string akanadaalis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[11]/td[2]")[0].InnerText;
            string akanadasatis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[11]/td[3]")[0].InnerText;
            string adanimarkaalis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[9]/td[2]")[0].InnerText;
            string adanimarkasatis = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[9]/td[3]")[0].InnerText;

            string agramsatis = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[5]/td[3]")[0].InnerText;
            string aonsalis = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[2]/td[2]")[0].InnerText;
            string aonssatis = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[2]/td[3]")[0].InnerText;
            string aceyrekalis = dokuman3.DocumentNode.SelectNodes("//*[@id='content']/div[2]/div/div[2]/div[2]/span[2]")[0].InnerText;
            string aceyreksatis = dokuman3.DocumentNode.SelectNodes("//*[@id='content']/div[2]/div/div[2]/div[3]/span[2]")[0].InnerText;


            string acumhuralis = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[3]/td[2]")[0].InnerText;
            string acumhursatis = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[3]/td[3]")[0].InnerText;

            string dolaryuzde = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[2]/td[4]")[0].InnerText;
            string euroyuzde = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[3]/td[4]")[0].InnerText;
            string altinyuzde = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[5]/td[4]")[0].InnerText;
            string onsyuzde = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[2]/td[4]")[0].InnerText;
            string cumhuriyetyuzde = dokuman2.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div[1]/div[4]/div/div[1]/table/tbody/tr[3]/td[4]")[0].InnerText;
            string sterlinyuzde = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[4]/td[4]")[0].InnerText;
            string danimarkayuzde = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[9]/td[4]")[0].InnerText;
            string kanadayuzde = dokuman.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[11]/td[4]")[0].InnerText;
            string ceyrekyuzde = dokuman4.DocumentNode.SelectNodes("/html/body/div[1]/div[4]/div[4]/div/div/div[1]/div[5]/div/div[1]/table/tbody/tr[6]/td[4]")[0].InnerText;


            /*Haberler*/

            string haber1 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[1]/a[2]/span")[0].InnerText;
            Label7.Text = ReplaceText(haber1);
            string haber1content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[1]/span[3]")[0].InnerText;
            Label8.Text = ReplaceText(haber1content);

            string haber2 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[2]/a[2]/span")[0].InnerText;
            Label9.Text = ReplaceText(haber2);
            string haber2content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[2]/span[3]")[0].InnerText;
            Label10.Text = ReplaceText(haber2content);

            string haber3 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[3]/a[2]/span")[0].InnerText;
            Label11.Text = ReplaceText(haber3);
            string haber3content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[3]/span[3]")[0].InnerText;
            Label12.Text = ReplaceText(haber3content);

            string haber4 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[4]/a[2]/span")[0].InnerText;
            Label13.Text = ReplaceText(haber4);
            string haber4content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[4]/span[3]")[0].InnerText;
            Label14.Text = ReplaceText(haber4content);

            string haber5 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[5]/a[2]/span")[0].InnerText;
            Label15.Text = ReplaceText(haber5);
            string haber5content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[5]/span[3]")[0].InnerText;
            Label16.Text = ReplaceText(haber5content);

            string haber6 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[6]/a[2]/span")[0].InnerText;
            Label17.Text = ReplaceText(haber6);
            string haber6content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[6]/span[3]")[0].InnerText;
            Label18.Text = ReplaceText(haber6content);

            string haber7 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[7]/a[2]/span")[0].InnerText;
            Label19.Text = ReplaceText(haber7);
            string haber7content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[7]/span[3]")[0].InnerText;
            Label20.Text = ReplaceText(haber7content);

            string haber8 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[8]/a[2]/span")[0].InnerText;
            Label21.Text = ReplaceText(haber8);
            string haber8content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[8]/span[3]")[0].InnerText;
            Label22.Text = ReplaceText(haber8content);

            string haber9 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[9]/a[2]/span")[0].InnerText;
            Label23.Text = ReplaceText(haber9);
            string haber9content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[9]/span[3]")[0].InnerText;
            Label24.Text = ReplaceText(haber9content);

            string haber10 = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[10]/a[2]/span")[0].InnerText;
            Label25.Text = ReplaceText(haber10);
            string haber10content = dokumanhaber.DocumentNode.SelectNodes("//*[@id='main']/ul/li[10]/span[3]")[0].InnerText;
            Label26.Text = ReplaceText(haber10content);

            Label1.Text = dolar;
            Label2.Text = euro;
            Label3.Text = altin;

            dolaralis.Text = dolar;
            dolarsatis.Text = adolarsatis;
            euroalis.Text = euro;
            eurosatis.Text = aeurosatis;
            sterlinalis.Text = asterlinalis;
            sterlinsatis.Text = asterlinsatis;
            kanadaalis.Text = akanadaalis;
            kanadasatis.Text = akanadasatis;
            danimarkaalis.Text = adanimarkaalis;
            danimarkasatis.Text = adanimarkasatis;
            onsalis.Text = aonsalis;
            onssatis.Text = aonssatis;
            gramalis.Text = altin;
            gramsatis.Text = agramsatis;
            cumhuralis.Text = acumhuralis;
            cumhursatis.Text = acumhursatis;
            ceyrekalis.Text = aceyrekalis;
            ceyreksatis.Text = aceyreksatis;




            Label4.Text = "%" + dolaryuzde;
            Label5.Text = "%" + euroyuzde;
            Label6.Text = "%" + altinyuzde;

            double eurodurum = Convert.ToDouble(euroyuzde);
            double dolardurum = Convert.ToDouble(dolaryuzde);
            double altindurum = Convert.ToDouble(altinyuzde);
            double sterlindurum = Convert.ToDouble(sterlinyuzde);
            double danimarkadurum = Convert.ToDouble(danimarkayuzde);
            double kanadadurum = Convert.ToDouble(kanadayuzde);
            double cumhurdurum = Convert.ToDouble(cumhuriyetyuzde);
            double onsdurum = Convert.ToDouble(onsyuzde);
            double ceyrekdurum = Convert.ToDouble(ceyrekyuzde);

            euroyuzdedurum(eurodurum);
            dolaryuzdedurum(dolardurum);
            altinyuzdedurum(altindurum);
            sterlinyuzdedurum(sterlindurum);
            danimarkayuzdedurum(danimarkadurum);
            kanadayuzdedurum(kanadadurum);
            onsyuzdedurum(onsdurum);
            cumhuriyetyuzdedurum(cumhurdurum);
            ceyrekyuzdedurum(ceyrekdurum);


            if (!Page.IsPostBack)
            {
                double Turklira = 1;
                DropDownList1.Items.Insert(0, new ListItem("Türk Lirası", Turklira.ToString()));
                DropDownList1.Items.Insert(1, new ListItem("Dolar", dolar.ToString()));
                DropDownList1.Items.Insert(2, new ListItem("Euro", euro.ToString()));
                //DropDownList1.Items.Insert(3, new ListItem("sterlin", sterlinsatis.ToString()));

                DropDownList2.Items.Insert(0, new ListItem("Türk Lirası", Turklira.ToString()));
                DropDownList2.Items.Insert(1, new ListItem("Dolar", dolar.ToString()));
                DropDownList2.Items.Insert(2, new ListItem("Euro", euro.ToString()));
                //DropDownList2.Items.Insert(3, new ListItem("sterlin", sterlinsatis.ToString()));

            }
            

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                double deger = Convert.ToDouble(TextBox1.Text);
                double sonuc = deger * (Convert.ToDouble(DropDownList1.SelectedItem.Value) / Convert.ToDouble(DropDownList2.SelectedItem.Value));
                string degisken = Convert.ToString(DropDownList2.SelectedItem.Text);
                if (degisken == "Dolar")
                {
                    tur.Attributes.Add("class", "fa fa-dollar");
                }
                else if (degisken == "Euro")
                {
                    tur.Attributes.Add("class", "fa fa-euro");
                }
                else if (degisken == "Türk Lirası")
                {
                    tur.Attributes.Add("class", "fas fa-lira-sign");
                }

                Label27.Text = sonuc.ToString();


            }
            catch (Exception)
            {
                Response.Write(@"<script language='javascript'>alert('Değer Giriniz !');</script>");
            }
        }











        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public string ReplaceText(string text)
        {

            text = text.Replace("Ä°", "İ").Replace("Ä±", "ı").Replace("Ã¼", "ü").Replace("ÅŸ", "ş").Replace("Å", "Ş").Replace("Ã§", "ç").Replace("Ã¶", "ö").Replace("ÄŸ", "ğ").Replace("Ã‡", "Ç").Replace("Ã–", "Ö").Replace("Ãœ", "Ü");
            return text;
        }
        public void euroyuzdedurum(double a)
        {
            if (a > 0)
            {

                euroyuzde.Attributes.Add("class", "green");
                eurotr.Attributes.Add("class", "greenicon");
                euro.Attributes.Add("class", "fa fa-arrow-up greenicon");
            }
            else if (a < 0)
            {
                euroyuzde.Attributes.Add("class", "red");
                eurotr.Attributes.Add("class", "redicon");
                euro.Attributes.Add("class", "fa fa-arrow-down redicon");
            }
            else
            {
                euroyuzde.Attributes.Add("class", "blue");
                eurotr.Attributes.Add("class", "blueicon");
                euro.Attributes.Add("class", "fa fa-minus blueicon");
            }

        }

        public void dolaryuzdedurum(double a)
        {
            if (a > 0)
            {

                dolaryuzde.Attributes.Add("class", "green");
                dolartr.Attributes.Add("class", "greenicon");
                dolar.Attributes.Add("class", "fa fa-arrow-up greenicon");
            }
            else if (a < 0)
            {
                dolaryuzde.Attributes.Add("class", "red");
                dolartr.Attributes.Add("class", "redicon");
                dolar.Attributes.Add("class", "fa fa-arrow-down redicon");
            }
            else
            {
                dolaryuzde.Attributes.Add("class", "blue");
                dolartr.Attributes.Add("class", "blueicon");
                dolar.Attributes.Add("class", "fa fa-minus blueicon");
            }

        }

        public void altinyuzdedurum(double a)
        {
            if (a > 0)
            {

                altinyuzde.Attributes.Add("class", "green");
                gramtr.Attributes.Add("class", "greenicon");
                gram.Attributes.Add("class", "fa fa-arrow-up greenicon");
            }
            else if (a < 0)
            {
                altinyuzde.Attributes.Add("class", "red");
                gramtr.Attributes.Add("class", "redicon");
                gram.Attributes.Add("class", "fa fa-arrow-down redicon");
            }
            else
            {
                altinyuzde.Attributes.Add("class", "blue");
                gramtr.Attributes.Add("class", "blueicon");
                gram.Attributes.Add("class", "fa fa-minus blueicon");
            }

        }

        public void sterlinyuzdedurum(double a)
        {
            if (a > 0)
            {
                sterlin.Attributes.Add("class", "fa fa-arrow-up greenicon");
                sterlintr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                sterlin.Attributes.Add("class", "fa fa-arrow-down redicon");
                sterlintr.Attributes.Add("class", "redicon");

            }
            else
            {
                sterlin.Attributes.Add("class", "fa fa-minus blueicon");
                sterlin.Attributes.Add("class", "blueicon");

            }

        }

        public void danimarkayuzdedurum(double a)
        {
            if (a > 0)
            {
                danimarka.Attributes.Add("class", "fa fa-arrow-up greenicon");
                danimarkatr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                danimarka.Attributes.Add("class", "fa fa-arrow-down redicon");
                danimarkatr.Attributes.Add("class", "redicon");

            }
            else
            {
                danimarka.Attributes.Add("class", "fa fa-minus blueicon");
                danimarkatr.Attributes.Add("class", "blueicon");

            }

        }

        public void kanadayuzdedurum(double a)
        {
            if (a > 0)
            {
                kanada.Attributes.Add("class", "fa fa-arrow-up greenicon");
                kanadatr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                kanada.Attributes.Add("class", "fa fa-arrow-down redicon");
                kanadatr.Attributes.Add("class", "redicon");

            }
            else
            {
                kanada.Attributes.Add("class", "fa fa-minus blueicon");
                kanadatr.Attributes.Add("class", "blueicon");

            }

        }

        public void onsyuzdedurum(double a)
        {
            if (a > 0)
            {
                ons.Attributes.Add("class", "fa fa-arrow-up greenicon");
                onstr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                ons.Attributes.Add("class", "fa fa-arrow-down redicon");
                onstr.Attributes.Add("class", "redicon");

            }
            else
            {
                ons.Attributes.Add("class", "fa fa-minus blueicon");
                onstr.Attributes.Add("class", "blueicon");

            }

        }


        public void cumhuriyetyuzdedurum(double a)
        {
            if (a > 0)
            {
                cumhur.Attributes.Add("class", "fa fa-arrow-up greenicon");
                cumhurtr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                cumhur.Attributes.Add("class", "fa fa-arrow-down redicon");
                cumhurtr.Attributes.Add("class", "redicon");

            }
            else
            {
                cumhur.Attributes.Add("class", "fa fa-minus blueicon");
                cumhurtr.Attributes.Add("class", "blueicon");

            }

        }
        public void ceyrekyuzdedurum(double a)
        {
            if (a > 0)
            {
                ceyrek.Attributes.Add("class", "fa fa-arrow-up greenicon");
                ceyrektr.Attributes.Add("class", "greenicon");

            }
            else if (a < 0)
            {
                ceyrek.Attributes.Add("class", "fa fa-arrow-down redicon");
                ceyrektr.Attributes.Add("class", "redicon");

            }
            else
            {
                ceyrek.Attributes.Add("class", "fa fa-minus blueicon");
                ceyrektr.Attributes.Add("class", "blueicon");

            }

        }




        protected void Label27_Load(object sender, EventArgs e)
        {

        }
    }
}