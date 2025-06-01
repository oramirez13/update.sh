#!/bin/bash

# Banner UwU
if command -v figlet &>/dev/null && command -v lolcat &>/dev/null; then
    figlet -f slant 'UwU Orami!' | lolcat
else
    echo "==============================="
    echo "     ORAMI UPDATE SCRIPT       "
    echo "==============================="
fi

# Actualización del sistema
echo "Iniciando la actualización del sistema..."
sudo apt update -y && sudo apt upgrade -y

echo "Eliminando paquetes innecesarios..."
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean

# Mensaje de despedida
echo "Actualización completada."
echo "Gracias por usar esta app."
