#!/bin/bash
set -e

echo "Ejecutando pruebas sin venv"

# Asegúrate de usar python3 y pip3 del sistema
PYTHON_BIN=$(which python3)
PIP_BIN=$(which pip3)

echo "Usando Python en: $PYTHON_BIN"
echo "Usando pip en: $PIP_BIN"

# Instala pytest y dependencias solo para el usuario de Jenkins
$PIP_BIN install --user -r requirements.txt

# Asegúrate de que el directorio de scripts de usuario esté en PATH
export PATH=$HOME/.local/bin:$PATH

echo "Ejecutando pruebas con pytest"
pytest -v --html=report.html

echo "Pruebas finalizadas"
