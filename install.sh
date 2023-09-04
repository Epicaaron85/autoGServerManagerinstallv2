#!/bin/bash

# Mise à jour du système
sudo apt update
sudo apt upgrade -y

# Installation de Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Configuration de l'environnement Rust
source $HOME/.cargo/env

# Installation de Redis
sudo apt install redis-server -y

# Installation de Python
sudo apt install python3 python3-pip -y

# Clonage du référentiel GServerManager
git clone https://github.com/SnowCheetos/GServerManager.git
cd GServerManager

# Compilation du projet Rust
cargo build --release

# Installation des dépendances Python
pip3 install -r requirements.txt

echo "L'installation est terminée !"
