#!/bin/bash

# Banner
if command -v figlet &>/dev/null && command -v lolcat &>/dev/null; then
    figlet -f slant "Welcome back Neo" | lolcat
else
    echo "==============================="
    echo "       SYSTEM UPDATE TOOL      "
    echo "==============================="
fi

echo "Detecting package manager..."

# Detect and update based on package manager
if command -v apt &>/dev/null; then
    echo "APT detected (Debian/Ubuntu)."
    sudo apt update -y && sudo apt upgrade -y
    sudo apt autoremove -y
    sudo apt autoclean -y

elif command -v pacman &>/dev/null; then
    echo "Pacman detected (Arch)."
    sudo pacman -Syu --noconfirm

elif command -v dnf &>/dev/null; then
    echo "DNF detected (Fedora/RHEL)."
    sudo dnf upgrade -y

elif command -v zypper &>/dev/null; then
    echo "Zypper detected (OpenSUSE)."
    sudo zypper refresh
    sudo zypper update -y

else
    echo "Error: No supported package manager found."
    exit 1
fi

echo "Update completed successfully."
echo "Thank you for using this tool."
