using Microsoft.Maui.Controls;
using System;
using System.Threading.Tasks;

namespace Calculo_de_subredes.MV
{
    public partial class Creador : ContentPage
    {
        public Creador()
        {
            InitializeComponent();
        }

        private async void OnButtonClicked(object sender, EventArgs e)
        {
            var current = Connectivity.NetworkAccess;

            if (current == NetworkAccess.Internet)
            {
                if (sender is Button button && button.CommandParameter is string url && Uri.IsWellFormedUriString(url, UriKind.Absolute))
                {
                    // Navegar a la página Web.xaml
                    await Navigation.PushAsync(new Web_conect(url));
                }
                else
                {
                    await DisplayAlert("Error", "La URL no es válida.", "OK");
                }
            }
            else
            {
                // Muestra un mensaje de error si no hay internet
                await DisplayAlert("Error", "Necesitas conexión a internet para continuar.", "OK");

                // Redirige al usuario a la configuración de red
                await ShowNetworkSettings();
            }
        }

        private Task ShowNetworkSettings()
        {
            // Redirige al usuario a la configuración de red (esto puede variar por plataforma)
#if ANDROID
            var intent = new Android.Content.Intent(Android.Provider.Settings.ActionWirelessSettings);
            Android.App.Application.Context.StartActivity(intent);
#elif IOS
            var url = new Uri("App-Prefs:root=WIFI");
            if (UIKit.UIApplication.SharedApplication.CanOpenUrl(url))
            {
                UIKit.UIApplication.SharedApplication.OpenUrl(url);
            }
#elif WINDOWS
            var uri = new Uri("ms-settings:network-wifi");
            Windows.System.Launcher.LaunchUriAsync(uri);
#endif
            return Task.CompletedTask;
        }
    }
}
