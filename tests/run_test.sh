#!/bin/bash
set -e

echo "activando entorno (sin venv, Jenkins no lo permite)"
export PATH=$HOME/.local/bin:$PATH

echo "instalando dependencias"
pip3 install --user -r requirements.txt

echo "ejecutando pruebas con pytest"
pytest --html=report.html --self-contained-html

echo "pruebas finalizadas resultados en reportes"
