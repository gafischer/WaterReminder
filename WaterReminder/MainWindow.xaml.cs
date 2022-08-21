using System.Threading;
using System.Windows;

namespace WaterReminder
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            InitializeTimer();
        }

        protected override void OnClosing(System.ComponentModel.CancelEventArgs e)
        {
            SystemTrayWindow.Dispose();

            base.OnClosing(e);
        }

        private void BtnRemind_Click(object sender, RoutedEventArgs e)
        {
            if (!new MinutesValidationRule().Validate(txtMinutes.Text, new System.Globalization.CultureInfo("en-Us")).IsValid)
            {
                return;
            }

            Properties.Settings.Default.Save();

            InitializeTimer();
        }

        private void BtnStop_Click(object sender, RoutedEventArgs e)
        {            
            Properties.Settings.Default.RemindMinutes = 0;
            Properties.Settings.Default.Save();

            txtMinutes.Text = "";
        }

        private void BtnExit_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void ShowNotifyMessage(object state)
        {
            string title = "Take A Drink";
            string text = "It's time to take a sip!";

            SystemTrayWindow.ShowBalloonTip(title, text, SystemTrayWindow.Icon);
        }

        private void InitializeTimer()
        {
            var minutes = Properties.Settings.Default.RemindMinutes;

            if (minutes > 0)
            {
                var timer = new Timer(ShowNotifyMessage, null, 0, minutes * 60000);
            }
        }

        private void TrayPopup_Open(object sender, RoutedEventArgs e)
        {
            if (Properties.Settings.Default.RemindMinutes <= 0 || !new MinutesValidationRule().Validate(txtMinutes.Text, new System.Globalization.CultureInfo("en-Us")).IsValid)
            {
                txtMinutes.Text = "";
            }
            else
            {
                txtMinutes.Text = Properties.Settings.Default.RemindMinutes.ToString();
            }
        }
    }
}
