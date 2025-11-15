#!/bin/bash
echo "ejecutando pruebas"

# usar pytest si está disponible en el PATH
if command -v pytest >/dev/null 2>&1; then
    pytest --maxfail=1 --disable-warnings -q
else
    echo "pytest no está instalado en Jenkins"
    exit 1
fi

echo "pruebas finalizadas"
