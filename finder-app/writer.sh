#!/bin/bash

# Validar argumentos
if [ $# -ne 2 ]; then
    echo "Error: Exactly 2 arguments are required."
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
    echo "Error: The file could not be created $writefile."
    exit 1
fi

exit 0