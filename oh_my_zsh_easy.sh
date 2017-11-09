#!/bin/bash

cd ~ && \
sudo apt install -y curl git zsh && \
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf && \
mkdir -pv ~/.local/share/fonts/ && \
mv PowerlineSymbols.otf ~/.local/share/fonts/ && \
wget https://raw.githubusercontent.com/powerline/powerline/develop/font/10-powerline-symbols.conf && \
mkdir ~/.config/fontconfig/fonts.conf/ -pv && \
mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/ && \
sudo fc-cache -f -v && \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"