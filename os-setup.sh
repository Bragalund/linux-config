#!/bin/bash
sudo apt update -y;
sudo apt upgrade -y;
sudo apt autoremove -y;

# setting darkmode in ubuntu
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'; # Set dark-theme  

# installing some commonly used software  
sudo apt install vim tmux git -y;

# Git

## Configuring aliases in git  
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# Set up tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf  

#Set up vim
mkdir ~/.vim
mkdir ~/.vim/undodir
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp .vimrc ~/.vimrc

# Oh-My-Zsh
sudo apt install zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp .zshrc ~/.zshrc
