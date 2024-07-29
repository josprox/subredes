using Calculo_de_subredes.Modelo;
namespace Calculo_de_subredes
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new Inicio());
        }
    }
}
