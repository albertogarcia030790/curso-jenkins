#!/bin/bash
echo "Iniciando ejecución de pruebas en Jenkins"

# Verificar si el entorno virtual existe
if [ ! -d "venv" ]; then 
   echo "Entorno virtual no encontrado. Creándolo..."
   python3 -m venv venv
fi

# Activar el entorno virtual
if [ -f "venv/bin/activate" ]; then
   source venv/bin/activate
else 
   echo "Error: no se pudo activar el entorno virtual"
   exit 1
fi

# Verificar si 'pip' está instalado correctamente
echo "Instalando dependencias..."
pip install --upgrade pip --break-system-packages
pip install -r requirements.txt --break-system-packages

# Ejecutar las pruebas
echo "Ejecutando pruebas con pytest..."
python -m pytest -v tests/

echo "Pruebas finalizadas. Reportes en reports/"
