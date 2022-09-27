#!/bin/bash

echo "127.0.0.1 henceze.online" >> /etc/hosts

echo "Docker-compose started..."
echo "Write in command line"
echo "curl https://henceze.online"
echo "for the check ssl connection"

sleep 6

  sudo docker-compose up -d --build
