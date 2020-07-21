#!/bin/bash
set -Ceu

wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt upgrade -y
sudo apt install -y anydesk git chromium-browser baobab curl ssh
sudo ubuntu-drivers autoinstall

echo "インストール作業が完了しました。再起動してください。"