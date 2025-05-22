#!/bin/bash
echo "Updating system..."
sudo apt update -y && sudo apt upgrade -y
echo "Removing unnecessary packages..."
sudo apt autoremove -y
sudo apt autoclean -y
echo "Cleaning APT cache..."
sudo apt clean
echo "All done!":
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

# Actualizando lista de paquetes
sudo apt update

# Aplicando actualizaciones
sudo apt upgrade -y

# Mensaje de despedida
echo "Actualización completada."
echo "Gracias por usar esta app."
