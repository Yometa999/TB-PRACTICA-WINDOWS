#!/bin/bash

# Recorrer todos los archivos en el directorio actual
for file in *.html; do
  # Verificar si el archivo coincide con el patrón de 1_ a 100_
  if [[ $file =~ ^([1-9][0-9]?|100)_.*\.html$ ]]; then
    # Cambiar el primer "_" por ".-"
    temp_file=$(echo "$file" | sed 's/_/.-/')
    # Reemplazar todos los demás "_" por espacios
    new_file=$(echo "$temp_file" | sed 's/_/ /g')
    # Renombrar el archivo
    mv "$file" "$new_file"
  fi
done

echo "Renombrado completado."
