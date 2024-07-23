using Calculo_de_subredes.MV;
using Microsoft.Maui.Controls;

namespace Calculo_de_subredes.Modelo
{
    public partial class Inicio : ContentPage
    {
        public Inicio()
        {
            InitializeComponent();
        }

        private async void OnIrACreadorClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Creador());
        }

        private void OnGenerarInformacionClicked(object sender, EventArgs e)
        {
            try
            {
                string ipBase = IpBaseEntry.Text;
                if (!int.TryParse(BitsSubredEntry.Text, out int bitsSubred))
                {
                    DisplayAlert("Error", "Número de bits para la subred no válido.", "OK");
                    return;
                }

                if (!int.TryParse(NumSubredEntry.Text, out int numSubred))
                {
                    DisplayAlert("Error", "Número de subredes no válido.", "OK");
                    return;
                }

                string prefijoOpcion = PrefijoOpcionEntry.Text.Trim().ToUpper();
                int? prefijoClase = null;

                if (prefijoOpcion == "Y")
                {
                    if (!int.TryParse(PrefijoClaseEntry.Text, out int prefijo))
                    {
                        DisplayAlert("Error", "Prefijo de red no válido.", "OK");
                        return;
                    }
                    prefijoClase = prefijo;
                }

                var resultados = SubnetCalculator.CalcularSubredes(ipBase, bitsSubred, numSubred, prefijoClase);

                ResultadosLabel.Text = string.Join("\n", resultados.Select(kv => $"{kv.Key}: {kv.Value}"));
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }
    }
}
