using Calculo_de_subredes.MV;
using Microsoft.Maui.Controls;
using System.Text;

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
                    DisplayAlert("Error", "N�mero de bits para la subred no v�lido.", "OK");
                    return;
                }

                if (!int.TryParse(NumSubredEntry.Text, out int numSubred))
                {
                    DisplayAlert("Error", "N�mero de subredes no v�lido.", "OK");
                    return;
                }

                string prefijoOpcion = PrefijoOpcionEntry.Text.Trim().ToUpper();
                int? prefijoClase = null;

                if (prefijoOpcion == "Y")
                {
                    if (!int.TryParse(PrefijoClaseEntry.Text, out int prefijo))
                    {
                        DisplayAlert("Error", "Prefijo de red no v�lido.", "OK");
                        return;
                    }
                    prefijoClase = prefijo;
                }

                var resultados = SubnetCalculator.CalcularSubredes(ipBase, bitsSubred, numSubred, prefijoClase);

                ResultadosLabel.Text = string.Join("\n", resultados.Select(kv => $"{kv.Key}: {kv.Value}"));
            }
            catch (Exception ex)
            {
                DisplayAlert("Error", $"Ocurri� un error: {ex.Message}", "OK");
            }
        }

        private async void OnCopiarInformacionClicked(object sender, EventArgs e)
        {
            try
            {
                string textoCopiar = ResultadosLabel.Text;
                if (string.IsNullOrWhiteSpace(textoCopiar))
                {
                    await DisplayAlert("Error", "No hay informaci�n generada para copiar.", "OK");
                    return;
                }

                await Clipboard.SetTextAsync(textoCopiar);
                await DisplayAlert("�xito", "La informaci�n ha sido copiada al portapapeles.", "OK");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"No se pudo copiar la informaci�n: {ex.Message}", "OK");
            }
        }
    }
}
