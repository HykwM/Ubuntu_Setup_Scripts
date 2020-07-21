#!/bin/bash
#details on https://www.yokoweb.net/2018/05/14/ubuntu-18_04-timesyncd/
set -Ceu

sudo sed -i -e "s/#NTP=/NTP=ccntp.meijo-u.ac.jp/g" /etc/systemd/timesyncd.conf
sudo systemctl restart systemd-timesyncd.service
