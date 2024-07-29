namespace Calculo_de_subredes.MV;

public partial class Creador : ContentPage
{
    public Creador()
    {
        InitializeComponent();
    }

    private void OnLabelTapped(object sender, EventArgs e)
    {
        if (sender is Span span)
        {
            var url = span.Text;
            try
            {
                Launcher.OpenAsync(new Uri(url));
            }
            catch (Exception ex)
            {
                // Manejo de excepciones en caso de que la URL no se pueda abrir
                DisplayAlert("Error", $"No se pudo abrir la URL: {ex.Message}", "OK");
            }
        }
    }
}
