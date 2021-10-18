#!/bin/sh

sudo apt update && sudo apt upgrade -y
sudo apt install zsh -y
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
mv ~/.zshrc ~/.zshrc.old
mv ~/.p10k.zsh ~/.p10k.zsh.old
echo "Symlinking ..."
ln -s ~/.dotfiles-zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles-zsh/p10k.zsh ~/.p10k.zsh
chsh -s $(which zsh)