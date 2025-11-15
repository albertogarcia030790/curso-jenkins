#!/bin/bash
echo "Iniciando ejecucion de pruebas en jenkins"

# verificar si el entorno virtual existe
if [ ! -d "venv"]; then 
   echo "entorno virtual no encotrado. Creandolo..."
   python3 -m venv venv
fi

#Activar el entorno virtual correctamente
if [ f "venv/bin/activate"]; then
   source venv/bin/activate
elif [ f "venv/Scripts/activate" ]; then
   source venv/Scripts/activate
else 
   echo "Error: no se pudo activar el entorno virtual"
   exit 1
fi

#verificar si 'pip' esta instalado correctamente
echo  "instalando dependencias.."
pip install --upgrade pip --break-system-packages
pip install -r requeriments.txt --break-system-packages

#Ejecutar las pruebas
echo "Ejecutando prubas con pytest.."
venv/bin/python -m pytest tests/

echo "pruebas finalizadas. Reportes en reports"