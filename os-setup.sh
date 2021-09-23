#!/bin/bash
sudo apt update -y;
sudo apt upgrade -y;
sudo apt autoremove -y;

# setting darkmode in ubuntu
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'; # Set dark-theme  

# installing some commonly used software  
sudo apt install software-properties-common apt-transport-https wget -y;

# Git
sudo apt install git -y;

## Configuring aliases in git  
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh -y;

# Set up tmux
sudo apt install tmux -y;
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

#Set up vim
sudo apt install vim -y;
mkdir ~/.vim
mkdir ~/.vim/undodir
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Oh-My-Zsh
sudo apt install zsh;
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Installing chezmoi  
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply bragalund
chezmoi update; 

# Java - OpenJDK
sudo apt install default-jdk -y;

# Install VSCode  
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code


