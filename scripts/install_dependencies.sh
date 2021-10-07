#!/bin/bash
cd /home/ec2-user/node-server
curl -sL https://rpm.nodesource.com/setup_12.x | bash -
yum -y install nodejs
sudo yum install -y gcc-c++ make
sudo npm install -g pm2