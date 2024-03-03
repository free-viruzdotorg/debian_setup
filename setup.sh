!#/bin/bash

# applications and services for initial setup
# for updating initial linux distro

sudo apt-get update -y
sudo apt-get upgrade -y

#installing draw.io

sudo snap install drawio

#installing microsoft teams

sudo snap install teams -y

#installing python3 and python2.7

sudo apt install python3 -y
sudo apt install python2.7 -y

#installing etcher

sudo wget -O https://github.com/balena-io/etcher/releases/download/v1.13.1/balenaEtcher-1.13.1-x64.AppImage?d_id=cac9d4a5-4dfc-46f1-9cd2-8a61c8cdf6f4&s_id=1674513369210 -y
sudo chmod 775 balenaEtcher-1.13.1-x64.AppImage
sudo ./balenaEtcher-1.13.1-x64.AppImage -y

#start in downloads directory

cd Downloads/

#installing spotify

curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y


#installing zoom

sudo snap install zoom-client -y

#installing amd radeon 6950xt firmware and drivers

sudo wget https://repo.radeon.com/amdgpu-install/23.40.2/ubuntu/jammy/amdgpu-install_6.0.60002-1_all.deb
sudo dpkg -i amdgpu-install_6.0.60002-1_all.deb -y
sudo amdgpu-install -y

#installing clamav

sudo apt install clamav clamav-daemon -y
sudo systemctl stop clamav-freshclam -y
sudo freshclam -y
sudo systemctl start clamav-freshclam -y
sudo systemctl enable clamav-freshclam -y

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

sudo apt install gnome-tweaks -y


#installing visual studio code

sudo snap install code --classic -y


#installing neofetch

sudo apt install neofetch -y


#installing syncthing

echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list
curl -s https://syncthing.net/release-key.txt | sudo apt-key add -
sudo apt update -y
sudo apt install syncthing -y
sudo systemctl enable syncthing@sdick.service
sudo systemctl start syncthing@sdick.service


# vmware install

sudo apt update -y
sudo apt install gcc build-essential -y
sudo ./VMware-Wrkstation-Full-16.1.2-17966106.x86_64.bundle -y


# vmware tools

sudo apt install open-vm-tools -y
sudo apt install open-vm-tools-desktop -y


# nmap install

sudo apt install nmap -y


# installing discord

wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
sudo dpkg -i /path/to/discord.deb -y


# download flameshot

sudo apt install flameshot -y
sudo chmod +x Flameshot-*.x86_64.AppImage


# install libre applications

sudo apt install libreoffice -y


#install steam

sudo add-apt-repository multiverse -y
sudo apt update -y
sudo apt install steam -y


#installing play on linux

sudo wget https://www.playonlinux.com/script_files/PlayOnLinux/4.3.4/PlayOnLinux_4.3.4.deb
sudo dpkg -i PlayOnLinux_4.3.4.deb -y
sudo apt update -y

#installing lutris

sudo wget https://github.com/lutris/lutris/releases/download/v0.5.16/lutris_0.5.16_all.deb
sudo dpkg -i lutris_0.5.16_all.deb -y
sudo apt update -y

#installing wine fromhq from repos

sudo dpkg --add-architecture i386 -y
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/mantic/winehq-mantic.sources
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y


#download lug-helper script for star citizen

sudo wget https://github.com/starcitizen-lug/lug-helper/archive/refs/tags/v2.15.zip
sudo gunzip lug-helper-v2.15.zip
cd lug-helper-2.15
sudo ./lug-helper.sh


#updating and upgrading packages

sudo apt update -y && sudo apt upgrade -y
