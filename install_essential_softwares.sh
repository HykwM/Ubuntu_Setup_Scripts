#!/bin/bash
set -Ceu

# enable magic sysrq key
sudo sh -c 'echo "kernel.sysrq = 1" >> /etc/sysctl.d/99-sysctl.conf' 

# install softwares
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo add-apt-repository ppa:graphics-drivers/ppa -y
sudo apt update
sudo apt upgrade -y
sudo apt install -y anydesk git chromium-browser baobab curl ssh nvidia-driver-460
echo "インストール作業が完了しました。再起動してください。"