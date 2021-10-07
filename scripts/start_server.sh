#!/bin/bash
cd /home/ec2-user/care2talk_api_qa
# set any env variables
sudo pm2 delete demo
sudo pm2 delete pm2-logrotate
#pm2 start --name new_prod dist/server.js -o /var/log/new-prod-out.log  -e /var/log/new-prod-error.log
pm2 start server.js --name demo
#reload pm2 process
pm2 reload demo
#Restart logs rotate
sudo systemctl restart awslogsd
#pm2 LOGS ROTATE
sudo pm2 install pm2-logrotate
sudo pm2 set pm2-logrotate:max_size 100M
sudo pm2 set pm2-logrotate:compress true
sudo pm2 set pm2-logrotate:retain 50
sudo pm2 set pm2-logrotate:dateFormat YYYY-MM-DD
sudo pm2 set pm2-logrotate:rotateInterval '0 0   *'