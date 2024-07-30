using Calculo_de_subredes.Modelo;
using OneSignalSDK.DotNet;
using OneSignalSDK.DotNet.Core;
using OneSignalSDK.DotNet.Core.Debug;

namespace Calculo_de_subredes
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

#if ANDROID
            // Enable verbose OneSignal logging to debug issues if needed.
            OneSignal.Debug.LogLevel = LogLevel.VERBOSE;

            // OneSignal Initialization
            OneSignal.Initialize("d8bd65be-a177-407d-a2ad-197cf53a33c0");

            // RequestPermissionAsync will show the notification permission prompt.
            // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 5)
            OneSignal.Notifications.RequestPermissionAsync(true);
#endif

            MainPage = new NavigationPage(new Inicio());
        }
    }
}
