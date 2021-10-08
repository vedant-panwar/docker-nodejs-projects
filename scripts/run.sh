#!/usr/bin/env bash

cd /home/ec2-user/node
npm install
sudo pm2 delete prod
sudo pm2 delete pm2-logrotate
pm2 start server.js --name prod
pm2 reload prod