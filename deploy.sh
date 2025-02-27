#!/usr/bin/bash
sudo apt update
sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop cicd_example
cd cicd_example
npm install
pm2 start ./bin/www --name cicd_example