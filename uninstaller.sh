#!/bin/bash

##Unintall Package
sudo apt -y remove docker docker-ce docker-engine docker.io containerd runc
sudo apt -y autoclean docker-ce docker.io docker
sudo apt -y purge docker-ce docker.io docker
sudo apt -y autoremove

##Remove docker dir & files
ls /var/lib/ | grep doc
rm -rf /var/lib/docker
ls /var/lib/ | grep doc
ls /etc/ | grep docker
rm -rf /etc/docker
ls /var/run/ | grep docker
rm -rf /etc/docker
ls /etc/ |grep docker

##unmount volume driver
umount /var/lib/docker/aufs
rm -rf /var/lib/docker
echo ""
echo "DONE ! Make sure docker is uninstalled"
