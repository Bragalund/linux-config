#!bin/bash
sudo apt update -y;
sudo apt upgrade -y;
sudo apt autoremove -y;
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'; # Set dark-theme  
sudo apt install vim tmux;

# Github cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh


# Set up tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf  

#Set up vim
cp .vimrc ~/.vimrc

