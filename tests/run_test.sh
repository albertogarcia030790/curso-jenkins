#!/bin/bash
echo "Iniciando ejecución de pruebas en Jenkins"

# Instalar dependencias solo para el usuario
echo "Instalando dependencias..."
python3 -m pip install --upgrade pip --user
python3 -m pip install -r requirements.txt --user

# Ejecutar pruebas
echo "Ejecutando pruebas con pytest..."
python3 -m pytest tests/

echo "Pruebas finalizadas. Reportes en reports"
