#! bin/bash
# Author: Patrick Moehrke

# Install neovim from source
sudo apt-get update
cd ~/
git clone https://github.com/neovim/neovim
cd neovim/ && make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Copy nvim/ to ~/.config/
mkdir -p ~/.config/nvim/
cp -r . ~/.config/nvim/
