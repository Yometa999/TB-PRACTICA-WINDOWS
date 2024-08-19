#!/bin/bash

# Lista de títulos con numeración
titles=(
    "1.- Qué diferencias existen entre Windows de 32 y 64 bits"
    "2.- Indique las características y tipos de versiones mediante una tabla de Windows 10 (Home Pro Enterprise Education Mobile IoT Team)"
    "3.- De qué manera puedo obtener las últimas actualizaciones de Windows"
    "4.- Cuáles son los requerimientos mínimos para la instalación de Windows 10?"
    "5.- Cuál es la diferencia entre formatear y eliminar?"
    "6.- Qué es un sistema de archivos y para qué sirve"
    "7.- Realizar una tabla comparativa de características de los diferentes Sistemas de archivos Que existen"
    "8.- Cuáles son los pasos para activar Windows Defender"
    "9.- Cómo saber cuántos núcleos tiene mi procesador"
    "10.- Unos de los elementos de seguridad más importantes para mantener nuestra computadora protegida mientras nos conectamos a una red es el firewall explique cómo funciona y cómo podemos acceder"
    "11.- Qué ajustes puedo cambiar en la configuración de energía"
    "12.- Qué es el administrador de dispositivos y mencione algunas tareas que se pueden efectuar"
    "13.- Ejecutar la herramienta que permite verificar qué hardware o dispositivos están instalados"
    "14.- Cómo podemos actualizar un controlador de hardware"
    "15.- Ingresar a la herramienta que permite configurar qué programas se ejecutan automáticamente en el inicio de Windows"
    "16.- Ejecutar la herramienta que permite ver la información del sistema de forma detallada"
    "17.- Ejecutar la herramienta que permite ver las aplicaciones y procesos que están ejecutándose y que además permite ver el uso de CPU y memoria"
    "18.- Indique los pasos para configurar el idioma del teclado (Inglés – Español) (Español – Inglés)"
    "19.- Ejecutar el Símbolo del sistema y ejecutar el comando que permite ver el nombre del equipo y su configuración red TCP/IP"
    "20.- De qué manera puedo cambiar la dirección IP de mi equipo"
    "21.- Ejecutar el Símbolo del sistema y ejecutar el comando que permite ver el estado de la comunicación del host local con uno o varios equipos de una red IP"
    "22.- Ejecutar el Símbolo del sistema y ejecutar el comando que permite obtener la MAC del equipo"
    "23.- Entrar a la herramienta que permite visualizar los sucesos y eventos que ocurrieron en el sistema operativo"
    "24.- En el Símbolo del sistema cuál es el comando que me permite asignar o quitar atributos de un archivo ejemplificar ocultando un archivo"
    "25.- Ejecutar la herramienta que permite verificar qué discos duros están instalados y cómo están particionados y con qué sistemas de archivos están formateados"
    "26.- Ejecutar las 2 herramientas la que permite desfragmentar los archivos del disco y la que permite escanear (comprobar) errores en el disco"
    "27.- Cuál es la función del archivo pagefile.sys en Windows"
    "28.- Qué es memoria virtual y ver la configuración de la memoria virtual de Windows"
    "29.- Hacer que en Windows se visualicen las extensiones de los archivos se vean los archivos ocultos y se vean los archivos de sistema"
    "30.- Crear un archivo de texto y luego hacerlo de solo lectura después comprobar intentando modificar dicho archivo (se debe hacer con los 2 métodos con comando y con interfaz gráfica)"
    "31.- Qué opciones existen para crear y administrar particiones"
    "32.- Qué es y para qué sirve un arranque dual"
    "33.- De qué manera puedo asignar una dirección IP en Windows"
    "34.- Qué es un servicio y cómo puedo detener pausar o ejecutar un servicio"
)

# Función para reemplazar caracteres especiales
normalize() {
    echo "$1" | sed -e 's/á/a/g' -e 's/é/e/g' -e 's/í/i/g' -e 's/ó/o/g' -e 's/ú/u/g' -e 's/,//g'
}

# Plantilla HTML
html_template='<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>%s</title>
</head>
<body>
    <h1>%s</h1>
</body>
</html>'

# Crear archivos HTML
for title in "${titles[@]}"; do
    normalized_title=$(normalize "$title")
    filename=$(echo "$normalized_title" | tr ' ' '_' | tr -cd '[:alnum:]_').html
    printf "$html_template" "$normalized_title" "$normalized_title" > "$filename"
done

echo "Archivos HTML creados con éxito."
