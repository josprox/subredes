namespace Calculo_de_subredes;

public partial class Web_conect : ContentPage
{
	public Web_conect(string url)
	{
		InitializeComponent();
        webView.Source = url;
    }

    private async void OnBackButtonClicked(object sender, EventArgs e)
    {
        await Navigation.PopAsync();
    }

}