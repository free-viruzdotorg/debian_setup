!#/bin/bash

# applications and services for initial setup
# for updating initial linux distro

sudo apt-get update
sudo apt-get upgrade


#installing lxqt

#sudo apt install lxqt sddm


#install xfce

sudo apt install xfce sddm

#installing snapd

sudo apt install snapd
sudo apt install snap


#installing draw.io

sudo snap install drawio


#installing remind

sudo apt install remind


#installing microsoft teams

sudo snap install teams


#install brave browser

sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


#installing python3

sudo apt install python3


#installing etcher

wget -O https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage?d_id=cac9d4a5-4dfc-46f1-9cd2-8a61c8cdf6f4&s_id=1674513369210
chmod 775 balenaEtcher-1.13.1-x64.AppImage
sudo ./balenaEtcher-1.13.1-x64.AppImage

#start in downloads directory

cd /downloads


#installing spotify

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client


#installing zoom

sudo snap install zoom-client

#installing nvidia drivers

#sudo add-apt-repository ppa:graphics-drivers/ppa
#sudo apt update
#sudo apt upgrade -y
#sudo apt install nvidia-graphics-drivers-390 nvidia-settings vdpauinfo vulkan libvdpau

#installing clamav

sudo apt install clamav clamav-daemon
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl start clamav-freshclam
sudo systemctl enable clamav-freshclam

#installing clamtk

sudo apt install clamtk -y

#installing signal
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
Add our repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
Update your package database and install signal
sudo apt update && sudo apt install signal-desktop


# virtualbox install

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
sudo apt update && sudo apt install virtualbox-6.0


#installing gnome tweaks

sudo apt install gnome-tweaks


#installing visual studio code

sudo snap install code --classic


#installing neofetch

sudo apt install neofetch


#installing syncthing

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
sudo apt update
sudo apt install syncthing
sudo systemctl enable syncthing@sdick.service
sudo systemctl start syncthing@sdick.service


# vmware install

sudo apt update
sudo apt install gcc build-essential
sudo ./VMware-Wrkstation-Full-16.1.2-17966106.x86_64.bundle


# vmware tools

sudo apt install open-vm-tools
sudo apt install open-vm-tools-desktop


# nmap install

sudo apt install nmap


# installing discord

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /path/to/discord.deb


# download flameshot

sudo apt install flameshot
chmod +x Flameshot-*.x86_64.AppImage


# install libre applications

sudo apt install libreoffice
