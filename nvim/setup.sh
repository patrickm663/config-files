#! bin/bash
# Author: Patrick Moehrke

# Install neovim
sudo apt-get update
sudo apt-get install neovim -y

# Copy nvim/ to ~/.config/
mkdir -p ~/.config/nvim/
cp -r . ~/.config/nvim/
