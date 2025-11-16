#!/bin/bash
echo "Iniciando ejecución de pruebas en Jenkins"

# Ir al directorio raíz del repo (Jenkins ya hace checkout aquí)
cd "$(dirname "$0")/.." || exit 1

# Instalar pytest solo para el usuario (evita PEP 668)
python3 -m pip install --upgrade pip --user
python3 -m pip install pytest pytest-html --user

# Ejecutar pruebas directamente en el directorio correcto
echo "Ejecutando pruebas con pytest..."
python3 -m pytest tests/ --html=reports/report.html

echo "Pruebas finalizadas. Reporte en reports/report.html"
