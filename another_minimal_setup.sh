# !/bin/bash

echo "INSTALLING PACK MANAGERS"
sudo apt-get -y install apt-transport-https software-properties-common snapd flatpak

echo "INSTALLING NETWORK PACKS"
sudo apt-get -y install curl wget

echo "INSTALLING DOCKER"
sudo apt-get install -y docker.io docker-compose-plugin
sudo groupadd docker && sudo gpasswd -a $USER docker

echo "INSTALLING KUBECTL"
sudo snap install kubectl --classic

echo "INSTALLING GIT"
sudo apt-get -y install git gitk

echo "INSTALLING AWS CLI"
sudo snap install aws-cli --classic

echo "INSTALLING ZOOM"
sudo snap install zoom-client

echo "INSTALLING GOLANG"
wget -c https://golang.org/dl/go1.19.2.linux-amd64.tar.gz -O $HOME/go1.19.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf $HOME/go1.19.2.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version

echo "INSTALLING BROWSER"
sudo snap install brave --classic

echo "INSTALLING IDE"
sudo apt-get -y install code

echo "INSTALLING DATABASE MANAGER"
sudo snap install dbeaver-ce

echo "INSTALLING ADDITIONAL SHELL"
sudo apt-get -y install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "INSTALLING API PLATFORM"
sudo snap install postman

echo "INSTALLING VISUAL PARADIGM"
wget -c https://www.visual-paradigm.com/downloads/vp/Visual_Paradigm_Linux64.sh -O $HOME/Downloads
bash $HOME/Downloads/Visual_Paradigm_Linux64.sh

echo "INSTALLING SLACK"
sudo snap install slack

echo "INSTALLING SPOTIFY"
sudo snap install spotify
