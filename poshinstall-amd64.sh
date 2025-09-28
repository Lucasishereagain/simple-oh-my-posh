#!/bin/bash

# Download the Oh My Posh binary for amd64
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O oh-my-posh

# Make it executable
chmod +x oh-my-posh

# Move it to /usr/local/bin
sudo mv oh-my-posh /usr/local/bin/oh-my-posh

# Create themes directory
mkdir -p ~/.poshthemes

# Download the Hul10 theme
wget https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json -O ~/.poshthemes/hul10.omp.json

# Add initialization to .bashrc if not already present
grep -qxF 'eval "$(oh-my-posh init bash --config ~/.poshthemes/hul10.omp.json)"' ~/.bashrc || \
echo 'eval "$(oh-my-posh init bash --config ~/.poshthemes/hul10.omp.json)"' >> ~/.bashrc

# Reload bashrc to save changes
source ~/.bashrc
