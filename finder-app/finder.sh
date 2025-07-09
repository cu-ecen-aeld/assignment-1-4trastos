#!/bin/bash

# Validar argumentos
if [ $# -ne 2 ]; then
    echo "Error: Se requieren exactamente 2 argumentos."
    echo "Uso: $0 <filesdir> <searchstr>"
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Validar si filesdir es un directorio
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir no es un directorio válido."
    exit 1
fi

# Contar archivos (X) y líneas coincidentes (Y)
X=$(find "$filesdir" -type f | wc -l)
Y=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Mostrar resultados EN INGLÉS (formato exacto requerido)
echo "The number of files are $X and the number of matching lines are $Y"
exit 0