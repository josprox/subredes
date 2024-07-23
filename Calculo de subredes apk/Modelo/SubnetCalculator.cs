using System;
using System.Collections.Generic;
using System.Net;

public class SubnetCalculator
{
    public static (string Clase, int Prefijo) ObtenerClaseYPrefijo(string ipBase)
    {
        int primerOcteto = int.Parse(ipBase.Split('.')[0]);

        if (1 <= primerOcteto && primerOcteto <= 126)
        {
            return ("A", 8); // Clase A
        }
        else if (128 <= primerOcteto && primerOcteto <= 191)
        {
            return ("B", 16); // Clase B
        }
        else if (192 <= primerOcteto && primerOcteto <= 223)
        {
            return ("C", 24); // Clase C
        }
        else if (224 <= primerOcteto && primerOcteto <= 239)
        {
            return ("D", 4); // Clase D (Multicast), no utilizada para redes
        }
        else if (240 <= primerOcteto && primerOcteto <= 255)
        {
            return ("E", 4); // Clase E (Experimental), no utilizada para redes
        }
        else
        {
            throw new ArgumentException("Dirección IP fuera de rango");
        }
    }

    public static Dictionary<string, string> CalcularSubredes(string ipBase, int bitsSubred, int numSubred, int? prefijoClase = null)
    {
        try
        {
            string clase;
            int prefijoClaseCalculado;
            string prefijoProporcionado;

            if (prefijoClase == null)
            {
                var resultado = ObtenerClaseYPrefijo(ipBase);
                clase = resultado.Clase;
                prefijoClaseCalculado = resultado.Prefijo;
                prefijoProporcionado = "Automático";
            }
            else
            {
                if (prefijoClase < 0 || prefijoClase > 32)
                {
                    throw new ArgumentException("El prefijo debe estar entre 0 y 32.");
                }
                clase = "Desconocida";
                prefijoClaseCalculado = prefijoClase.Value;
                prefijoProporcionado = "Proporcionado manualmente";
            }

            IPAddress ipAddress = IPAddress.Parse(ipBase);
            byte[] ipBytes = ipAddress.GetAddressBytes();
            Array.Reverse(ipBytes); // Reverse to match the byte order
            int ipInt = BitConverter.ToInt32(ipBytes, 0);
            int bitsRed = prefijoClaseCalculado;
            int bitsTotal = bitsRed + bitsSubred;

            if (bitsTotal > 32)
            {
                throw new ArgumentException("El número de bits de la subred excede el rango permitido.");
            }

            int tamañoSubred = (int)Math.Pow(2, (32 - bitsTotal));

            int baseSubred = ipInt + (tamañoSubred * numSubred);
            byte[] baseSubredBytes = BitConverter.GetBytes(baseSubred);
            Array.Reverse(baseSubredBytes);
            var direccionSubred = new IPAddress(baseSubredBytes);

            byte[] broadcastBytes = BitConverter.GetBytes(baseSubred + tamañoSubred - 1);
            Array.Reverse(broadcastBytes);
            var direccionBroadcast = new IPAddress(broadcastBytes);

            byte[] primeraAsignableBytes = BitConverter.GetBytes(baseSubred + 1);
            Array.Reverse(primeraAsignableBytes);
            var primeraAsignable = new IPAddress(primeraAsignableBytes);

            byte[] ultimaAsignableBytes = BitConverter.GetBytes(baseSubred + tamañoSubred - 2);
            Array.Reverse(ultimaAsignableBytes);
            var ultimaAsignable = new IPAddress(ultimaAsignableBytes);

            byte[] mascaraBytes = BitConverter.GetBytes((uint.MaxValue << (32 - bitsTotal)) & uint.MaxValue);
            Array.Reverse(mascaraBytes);
            var mascaraSubred = new IPAddress(mascaraBytes);

            byte[] mascaraPredeterminadaBytes = BitConverter.GetBytes((uint.MaxValue << (32 - bitsRed)) & uint.MaxValue);
            Array.Reverse(mascaraPredeterminadaBytes);
            var mascaraPredeterminada = new IPAddress(mascaraPredeterminadaBytes);

            return new Dictionary<string, string>
            {
                {"Red Base", ipAddress.ToString()},
                {"Máscara Predeterminada", mascaraPredeterminada.ToString()},
                {"Clase", clase},
                {$"Prefijo de Clase ({prefijoProporcionado})", $"/{prefijoClaseCalculado}"},
                {"Total de Subredes", (Math.Pow(2, bitsSubred)).ToString()},
                {"Tamaño de Subred", (tamañoSubred - 2).ToString()},
                {"Subred Solicitada", numSubred.ToString()},
                {"ID de la red", direccionSubred.ToString()},
                {"Máscara de Subred", mascaraSubred.ToString()},
                {"Dirección de Broadcast", direccionBroadcast.ToString()},
                {"Primera Dirección Asignable", primeraAsignable.ToString()},
                {"Última Dirección Asignable", ultimaAsignable.ToString()},
            };
        }
        catch (Exception ex)
        {
            return new Dictionary<string, string> { { "Error", ex.Message } };
        }
    }
}
