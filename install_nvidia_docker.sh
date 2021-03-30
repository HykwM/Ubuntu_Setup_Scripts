#!/bin/bash
set -Ceu

echo "dockerをインストールします。参考：https://docs.docker.com/install/linux/docker-ce/debian/"
curl -sSL https://get.docker.com/ | CHANNEL=stable sh



echo "docker-composeをインストールします。参考：https://docs.docker.com/compose/install/"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose



echo "nvidia-docker2をインストールします。
	参考：https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#installing-docker-ce"

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list
sudo apt-get update
sudo apt-get install -y nvidia-docker2
sudo pkill -SIGHUP dockerd
sudo usermod -aG docker $USER
sudo systemctl restart docker

echo "インストール作業が完了しました。再起動してください。"