# Proyecto de Subneteo de Redes

Este proyecto está diseñado para calcular subredes a partir de una dirección IP base, utilizando Python y C# para aplicaciones Android.

## Descripción

El proyecto incluye un script en Python que permite:
1. Determinar la clase y el prefijo de red de una IP base.
2. Calcular subredes específicas basándose en la IP base y el número de bits de subred proporcionados.
3. Mostrar detalles como la red base, la máscara predeterminada, el tamaño de la subred, las direcciones asignables, entre otros.

## Funcionalidades

- **Determinación de Clase y Prefijo**: Determina la clase (A, B, C, D, E) y el prefijo de una dirección IP base.
- **Cálculo de Subredes**: Calcula la subred solicitada y proporciona información detallada sobre la misma.
- **Interfaz de Usuario**: Solicita la IP base, el número de bits de subred y el número de subred al usuario.
- **Salida Detallada**: Muestra información detallada sobre la red base, máscara predeterminada, clase, prefijo, tamaño de la subred, direcciones de red, broadcast, primera y última dirección asignable, etc.

## Requisitos

- **Python 3.x**
- **Librería `ipaddress`**: Utilizada para manipular y calcular direcciones IP.

## Uso

### Ejecución del Script en Python

1. Clona este repositorio o descarga los archivos.
2. Navega hasta el directorio del proyecto.
3. Ejecuta el script:

    ```bash
    python nombre_del_archivo.py
    ```

4. Introduce los valores solicitados:
    - **IP base**: Por ejemplo, `10.0.0.0`
    - **Número de bits para la subred**: Por ejemplo, `4`
    - **Número de subredes**: Por ejemplo, `2`
    - **Prefijo de red** (opcional): Si se desea proporcionar manualmente.

### Ejemplo de Uso

    Programa para calcular subredes
    Creado por: Melchor Estrada José Luis
    Última actualización: 21/07/24 09:48 pm. V1.14
    Página de soporte: https://josprox.com/soporte/
    Este programa es SOLO para aprendizaje, su licencia es GPL y Creative Commons
    Ingrese la IP base (por ejemplo, 10.0.0.0): 192.168.1.0
    Ingrese el número de bits para la subred: 4
    Ingrese el número de subredes: 2
    ¿Desea proporcionar el prefijo manualmente? (Y/N): N

    Red Base: 192.168.1.0
    Máscara Predeterminada: 255.255.255.0
    Clase: C
    Prefijo de Clase (Automático): /24
    Total de Subredes: 16
    Tamaño de Subred: 14
    Subred Solicitada: 2
    ID de la red: 192.168.1.32
    Máscara de Subred: 255.255.255.240
    Dirección de Broadcast: 192.168.1.47
    Primera Dirección Asignable: 192.168.1.33
    Última Dirección Asignable: 192.168.1.46


## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor haz un fork de este repositorio y envía un pull request con tus mejoras.

## Soporte

Para soporte, visita [https://josprox.com/soporte/](https://josprox.com/soporte/).

## Licencia

Este proyecto está licenciado bajo una licencia Creative Commons (CC BY-NC-ND 4.0). Puedes compartir el material, pero no puedes hacer uso comercial del mismo ni distribuir obras derivadas.

Consulta el archivo `LICENSE` para más detalles.
