using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Net;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;



namespace WpfApp1
{
    public partial class Page2 : Page
    {
        public Page2()
        {
            SwitchLanguage("EN");
            InitializeComponent();
            //Coingecko();
        }


        public void SwitchLanguage(string languageCode)
        {
            ResourceDictionary dictionary = new ResourceDictionary();

            switch (languageCode)
            {
                case "en":
                    dictionary.Source = new Uri("..\\StringResources.en.xaml", UriKind.Relative);
                    break;

                case "ua":
                    dictionary.Source = new Uri("..\\StringResources.ua.xaml", UriKind.Relative);
                    break;

                default:
                    dictionary.Source = new Uri("..\\StringResources.en.xaml", UriKind.Relative);
                    break;
            }
            this.Resources.MergedDictionaries.Add(dictionary);
        }
        public void HandleCheckUA(object sender, RoutedEventArgs e)
        {
            SwitchLanguage("ua");         
        }

        public void HandleUncheckedEN(object sender, RoutedEventArgs e)
        {
            SwitchLanguage("en");    
        }


        public class MarketData
        {
            public string id { get; set; }
            public string name { get; set; }
            public string url { get; set; }
            public string image { get; set; }
            public int trust_score_rank { get; set; }
            public double trade_volume_24h_btc { get; set; }
            public double trade_volume_24h_btc_normalized { get; set; }
        }


        private void Button_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Coingecko();
                Market_data();
                Capitalization.Visibility = Visibility.Visible;
                Exchanges.Visibility = Visibility.Visible;
                GridInfo.Visibility = Visibility.Visible;
                textbox_convert.Visibility = Visibility.Visible;
                textbox_result.Visibility = Visibility.Visible;
                textbox_mul.Visibility = Visibility.Visible;
                button_convert.Visibility = Visibility.Visible;
            }

            catch (WebException ex)
            {
                if (ex.Status == WebExceptionStatus.ProtocolError)
                {
                    var response = ex.Response as HttpWebResponse;
                    if (response != null)
                    {
                        label_error.Content = Convert.ToString("Wrong API id: " + (int)response.StatusCode);
                    }
                    else
                    {
                        // no http status code available
                    }
                }
                else
                {
                    // no http status code available
                }

            }

        }

        private string forum_page;
        private string home_page;
        private string market_site;
        private string currensy_price;
        
        public void Coingecko()
        {
            var culture = new CultureInfo("en-US");
            string text = textbox_search.Text;

            System.Net.WebClient wc = new System.Net.WebClient();
            String json = wc.DownloadString("https://api.coingecko.com/api/v3/coins/" + text + "?localization=false&tickers=true&market_data=true&community_data=true&developer_data=false&sparkline=false");
            market_site = "https://www.coingecko.com/en/coins/" + text;
            //var resultDynamic = JsonConvert.DeserializeObject<dynamic>(json);
            dynamic obj = JObject.Parse(json);

            currensy_price = obj.market_data.current_price.usd;

            label_name.Content = obj.name + "(" + obj.symbol + ")";
            label_rank.Content = "Rank #" + obj.market_cap_rank;
            label_convert.Content = obj.symbol;

            label_price.Content = currensy_price + " USD";
            label_price_change.Content = obj.market_data.price_change_percentage_24h.ToString("0.0") + "%";
            label_market_cap.Content = obj.market_data.market_cap.usd.ToString("C1", culture);
            label_trading_vol.Content = obj.market_data.total_volume.usd.ToString("C1", culture);
            label_circ_supl.Content = obj.market_data.circulating_supply.ToString("N1", culture);
            label_total_supl.Content = obj.market_data.total_supply.ToString("N1", culture);
            label_max_supl.Content = obj.market_data.max_supply.ToString("N1", culture);
      
            String GetVal()
            {
                if (obj.market_data.fully_diluted_valuation.usd == null)
                    return " ";
                return obj.market_data.fully_diluted_valuation.usd.ToString("C1", CultureInfo.CreateSpecificCulture("en-US"));
            }
            label_diluted_val.Content = GetVal();


            int i = 0;
            while (obj.links.homepage[i] != "")
            {
                home_page = obj.links.homepage[i].ToString();
                i++;
                if (i > 2)
                    break;
                string trim = Regex.Replace(home_page, @"^(?:http(?:s)?://)?(?:www(?:[0-9]+)?\.)?", string.Empty, RegexOptions.IgnoreCase);
                button_homepage.Content = trim;
            }

            int i1 = 0;
            while (obj.links.official_forum_url[i1] != "")
            {
                forum_page = obj.links.official_forum_url[i1].ToString();
                i1++;
                if (i1 > 2)
                    break;
                string trim = Regex.Replace(forum_page, @"^(?:http(?:s)?://)?(?:www(?:[0-9]+)?\.)?", string.Empty, RegexOptions.IgnoreCase);
                button_forum.Content = trim;
            }
           
        }




        public void Converter()
        {

            var culture = new CultureInfo("en-US");
            string text_converter_search = textbox_convert.Text;
            System.Net.WebClient wc = new System.Net.WebClient();
            String currensy_pricesec = wc.DownloadString("https://api.coingecko.com/api/v3/coins/" + text_converter_search + "?localization=false&tickers=true&market_data=true&community_data=true&developer_data=false&sparkline=false");
            dynamic obj = JObject.Parse(currensy_pricesec);

            if (text_converter_search == null || text_converter_search.Trim() == "")
            {
                MessageBox.Show("Please Enter API id of a currency", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                textbox_convert.Focus();
                return;
            }
            else if (textbox_mul.Text == null || textbox_mul.Text.Trim() == "")
            {
                MessageBox.Show("Please Enter amount", "Information", MessageBoxButton.OK, MessageBoxImage.Information);
                textbox_mul.Focus();
                return;
            }

            decimal val1 = Convert.ToDecimal(currensy_price, culture);         //first value of price (non changeble)
            decimal val2 = Convert.ToDecimal(obj.market_data.current_price.usd, culture);
            decimal mul = Convert.ToDecimal(textbox_mul.Text, culture);
            textbox_result.Text = ((val1 * mul) / val2).ToString("N1", culture);
        }

        private void Market_data()
        {
            System.Net.WebClient wc = new System.Net.WebClient();
            String json_market = wc.DownloadString("https://api.coingecko.com/api/v3/exchanges?per_page=6&page=1");
            List<MarketData> market = JsonConvert.DeserializeObject<List<MarketData>>(json_market);

            var numberOfLabels = 4;

            for (int i = 0; i <= numberOfLabels; i++)
            {
                var labelName = string.Format("label_market{0}", i);
                var label = (Label)this.FindName(labelName);
                label.Content = String.Format(CultureInfo.CreateSpecificCulture("en-US"), "{0}. {1} {2:C1}", market[i].trust_score_rank, market[i].name, market[i].trade_volume_24h_btc);
            }


        }

        public void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string url = home_page;
            Process.Start(new ProcessStartInfo("cmd", $"/c start {url}") { CreateNoWindow = true });

            //Old way
            //NavigationWindow window = new NavigationWindow();
            //Uri source = new Uri("https://www.ethereum.org/", UriKind.Absolute);
            //window.Source = source; window.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            string url = market_site;
            Process.Start(new ProcessStartInfo("cmd", $"/c start {url}") { CreateNoWindow = true });
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Converter();
        }

        private void button_forum_Click(object sender, RoutedEventArgs e)
        {
            string url = forum_page;
            Process.Start(new ProcessStartInfo("cmd", $"/c start {url}") { CreateNoWindow = true });

        }
    }
}
