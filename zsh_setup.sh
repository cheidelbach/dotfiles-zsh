#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

apt update  
apt upgrade -y
# tools
apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# font
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
# theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# config
mv ~/.zshrc ~/.zshrc.old
mv ~/.p10k.zsh ~/.p10k.zsh.old
echo "symlink $SCRIPT_DIR/zshrc -> $HOME/.zshrc"
ln -s $SCRIPT_DIR/zshrc $HOME/.zshrc
echo "symlink $SCRIPT_DIR/p10k.zsh -> $HOME/.p10k.zsh"
ln -s $SCRIPT_DIR/p10k.zsh $HOME/.p10k.zsh
chsh -s $(which zsh)