import ipaddress

def obtener_clase_y_prefijo(ip_base):
    """Determina la clase y el prefijo de red según la IP base."""
    primer_octeto = int(ip_base.split('.')[0])
    
    if 1 <= primer_octeto <= 126:
        return "A", 8   # Clase A
    elif 128 <= primer_octeto <= 191:
        return "B", 16  # Clase B
    elif 192 <= primer_octeto <= 223:
        return "C", 24  # Clase C
    elif 224 <= primer_octeto <= 239:
        return "D", 4   # Clase D (Multicast), no utilizada para redes
    elif 240 <= primer_octeto <= 255:
        return "E", 4   # Clase E (Experimental), no utilizada para redes
    else:
        raise ValueError("Dirección IP fuera de rango")

def calcular_subredes(ip_base, bits_subred, num_subred, prefijo_clase=None):
    try:
        if prefijo_clase is None:
            # Obtener la clase y el prefijo basado en la IP base
            clase, prefijo_clase = obtener_clase_y_prefijo(ip_base)
            prefijo_proporcionado = "Automático"
        else:
            # Validar que el prefijo proporcionado es válido
            if prefijo_clase < 0 or prefijo_clase > 32:
                raise ValueError("El prefijo debe estar entre 0 y 32.")
            clase = "Desconocida"  # La clase no se determina si el prefijo es proporcionado por el usuario
            prefijo_proporcionado = "Proporcionado manualmente"
        
        # Crear la red base con el prefijo apropiado
        red_base = ipaddress.IPv4Network(f"{ip_base}/{prefijo_clase}", strict=False)

        # Calcular la máscara de subred extendida
        bits_red = red_base.prefixlen
        bits_total = bits_red + bits_subred
        if bits_total > 32:
            raise ValueError("El número de bits de la subred excede el rango permitido.")
        
        nueva_mascara = (1 << 32) - (1 << (32 - bits_total))
        
        # Calcular el tamaño de cada subred
        tamaño_subred = 2 ** (32 - bits_total)
        
        # Calcular la dirección de la subred específica
        base_subred = int(red_base.network_address) + (tamaño_subred * num_subred)
        direccion_subred = ipaddress.IPv4Address(base_subred)
        
        # Calcular la dirección de broadcast de la subred
        direccion_broadcast = ipaddress.IPv4Address(base_subred + tamaño_subred - 1)
        
        # Primera y última dirección asignable
        primera_asignable = ipaddress.IPv4Address(base_subred + 1)
        ultima_asignable = ipaddress.IPv4Address(base_subred + tamaño_subred - 2)
        
        # Resultados
        resultados = {
            "Red Base": str(red_base.network_address),
            "Máscara Predeterminada": str(red_base.netmask),
            "Clase": clase,
            f"Prefijo de Clase ({prefijo_proporcionado})": f"/{prefijo_clase}",
            "Nuevo Prefijo de Máscara": f"/{bits_total}",  # Nuevo prefijo calculado
            "Total de Subredes": 2 ** bits_subred,
            "Tamaño de Subred": tamaño_subred - 2,
            "Subred Solicitada": num_subred,
            "ID de la red": str(direccion_subred),
            "Máscara de Subred": str(ipaddress.IPv4Address(nueva_mascara)),
            "Dirección de Broadcast": str(direccion_broadcast),
            "Primera Dirección Asignable": str(primera_asignable),
            "Última Dirección Asignable": str(ultima_asignable),
        }
        
        return resultados

    except ValueError as e:
        return {"Error": str(e)}

def main():
    # Información del programa
    print("----------------------------------------------------------------------------------------")
    print("Programa para calcular subredes")
    print("Creado por: Melchor Estrada José Luis")
    print("Última actualización: 28/07/24 06:00 pm. V1.14.2")
    print("Página de soporte: https://josprox.com/soporte/")
    print("Este programa es SOLO para aprendizaje, su licencia es GPL y Creative Commons")
    print("----------------------------------------------------------------------------------------")
    
    while True:
        # Solicitar valores al usuario
        ip_base = input("Ingrese la IP base (por ejemplo, 10.0.0.0): ")
        bits_subred = int(input("Ingrese el número de bits para la subred: "))
        num_subred = int(input("Ingrese el número de subredes: "))
        
        prefijo_opcion = input("¿Desea proporcionar el prefijo manualmente? (Y/N): ").strip().upper()
        if prefijo_opcion == "Y":
            prefijo_clase = int(input("Ingrese el prefijo de red (por ejemplo, 24): "))
        else:
            prefijo_clase = None

        resultados = calcular_subredes(ip_base, bits_subred, num_subred, prefijo_clase)
        
        # Mostrar los resultados
        for clave, valor in resultados.items():
            print(f"{clave}: {valor}")
        
        # Preguntar si desea ingresar otra red
        otra_red = input("¿Desea ingresar otra red? (Y/N): ").strip().upper()
        if otra_red == "N":
            break
    
    # Pausa antes de cerrar
    input("Presione Enter para salir...")

# Llamar a la función principal
if __name__ == "__main__":
    main()