#!/bin/bash

#sudo mkdir ./html

echo "Adding Host ..."
sudo sh ./host-helper.sh addhost dev.delivery.local
echo "Host adding completed"

echo "Cloning delivery service project from git"
git clone https://github.com/saadmalik20/laravel-delivery-service.git html/laravel-delivery-service/
cp ./config/.env-web ./html/laravel-delivery-service/.env


echo "Starting Docker ..."
sudo docker-compose build
sudo docker-compose up -d

echo -e "Setup done"
