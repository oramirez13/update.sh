# update.sh
update.sh es una herramienta de actualización automatizada escrita en Bash, diseñada para simplificar el mantenimiento de sistemas basados en Debian (Kali, Ubuntu). Realiza de forma segura y rápida una actualización completa del sistema, con manejo de errores.

# update.sh - Script de actualización para distros Debian/Ubuntu

Este script llamado `update.sh` fue desarrollado para automatizar la actualización completa de sistemas basados en **Debian/Ubuntu**, tales como:

-  Kali Linux  
-  Ubuntu  
-  Linux Mint    
- y cualquier otra distro basada en `apt`...

---

##  Qué hace este script?

```bash
sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean

Requisitos
Sistema basado en Debian/Ubuntu
Tener permisos de sudo
(Opcional) Tener instalados:
  figlet
  lolcat
Pueden ser instalados con:
  sudo apt install figlet lolcat -y

Uso
1 - Clonar o descargar el archivo update.sh:
  wget https://github.com/<TU_USUARIO>/<TU_REPO>/raw/main/update.sh

2 - Darle permisos de ejecución:
  chmod +x update.sh

3 - Ejecutar el script:
  ./update.sh

¿Qué limpia?
  Paquetes obsoletos (autoremove)
  Caché innecesaria de APT (autoclean y clean)

Autor: orami
Licencia: Este proyecto está bajo la licencia MIT.
