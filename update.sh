#!/bin/bash

# Banner
if command -v figlet &>/dev/null && command -v lolcat &>/dev/null; then
    figlet -f slant "Welcome back Neo" | lolcat
else
    echo "==============================="
    echo "       SYSTEM UPDATE TOOL      "
    echo "==============================="
fi

# System update
echo "Starting system update..."
sudo apt update -y && sudo apt upgrade -y

echo "Removing unused packages..."
sudo apt autoremove -y
sudo apt autoclean -y
sudo apt clean

# Farewell message
echo "Update completed successfully."
echo "Thank you for using this tool."
