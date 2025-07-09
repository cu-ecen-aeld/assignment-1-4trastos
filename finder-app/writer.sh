#!/bin/bash

# Validar argumentos
if [ $# -ne 2 ]; then
    echo "Error: Se requieren exactamente 2 argumentos."
    echo "Uso: $0 <writefile> <writestr>"
    exit 1
fi

writefile="$1"
writestr="$2"

# Crear directorio si no existe
mkdir -p "$(dirname "$writefile")"

# Escribir en el archivo
echo "$writestr" > "$writefile"

# Validar que el archivo se creó
if [ ! -f "$writefile" ]; then
    echo "Error: No se pudo crear el archivo $writefile."
    exit 1
fi

exit 0