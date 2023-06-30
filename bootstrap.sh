#!/bin/bash
sudo apt update -y
sudo apt upgrade -y

sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

sudo apt install curl -y
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

git clone https://github.com/Tezlaa/Test_for_xedrum_comp.git

cd Test_for_xedrum_comp

sudo docker-compose up -d