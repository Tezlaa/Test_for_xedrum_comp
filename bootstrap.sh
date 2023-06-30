#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker -y

sudo service docker start
sudo usermod -a -G docker ec2-user

sudo yum install curl -y
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo git clone https://github.com/Tezlaa/Test_for_xedrum_comp.git

cd Test_for_xedrum_comp

sudo docker-compose up -d