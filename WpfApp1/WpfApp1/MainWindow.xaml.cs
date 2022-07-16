using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Json;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Newtonsoft.Json.Linq;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {

            InitializeComponent();
            Coingecko();
            this.DataContext = this;
        }

        public class Roi
        {
            public double times { get; set; }
            public string currency { get; set; }
            public double percentage { get; set; }
        }

        public class Root
        {
            public string id { get; set; }
            public string symbol { get; set; }
            public string name { get; set; }
            public string image { get; set; }
            public double current_price { get; set; }
            public object market_cap { get; set; }
            public int market_cap_rank { get; set; }
            public long? fully_diluted_valuation { get; set; }
            public object total_volume { get; set; }
            public double high_24h { get; set; }
            public double low_24h { get; set; }
            public double price_change_24h { get; set; }
            public double price_change_percentage_24h { get; set; }
            public object market_cap_change_24h { get; set; }
            public double market_cap_change_percentage_24h { get; set; }
            public double circulating_supply { get; set; }
            public double? total_supply { get; set; }
            public double? max_supply { get; set; }
            public double ath { get; set; }
            public double ath_change_percentage { get; set; }
            public DateTime ath_date { get; set; }
            public double atl { get; set; }
            public double atl_change_percentage { get; set; }
            public DateTime atl_date { get; set; }
            public Roi roi { get; set; }
            public DateTime last_updated { get; set; }
        }




        private void Coingecko()
        {
            System.Net.WebClient wc = new System.Net.WebClient();
            String json = wc.DownloadString("https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_descmarket_cap_desc&per_page=10&page=1&sparkline=false");

            List<Root> products = JsonConvert.DeserializeObject<List<Root>>(json);
            //Root p1 = products[0];

            var numberOfLabels = 9;

            for (int i = 0; i <= numberOfLabels; i++)
            {
                var labelName = string.Format("Label_top{0}", i);
                var label = (Label)this.FindName(labelName);
                label.Content = products[i].name;
            }

            
        }



        private void Label_MouseDoubleClick_1(object sender, MouseButtonEventArgs e)
        {

            var Deatails = new Details(); //create your new form.
            Deatails.Show(); //show the new form.
            this.Close(); //only if you want to close the current form.
        }
    }


}





