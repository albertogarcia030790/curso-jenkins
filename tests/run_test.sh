#!/bin/bash
echo "activando entorno virtual"

# Crear entorno virtual si no existe
if [ ! -d "venv" ]; then
    echo "Creando entorno virtual"
    python3 -m venv venv
fi

# Activar entorno virtual
source venv/bin/activate

echo "instalando dependencias"
pip install -r requirements.txt --break-system-packages || pip install -r requirements.txt

echo "ejecutando pruebas con pytest"
pytest --maxfail=1 --disable-warnings --junitxml=report.xml

echo "pruebas finalizadas resultados en reportes"
