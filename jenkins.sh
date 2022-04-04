#!/bin/bash
#Autor: kmkouokam@yahoo.com
#Discrption: Jenkins Installation on Ubuntu
#Date: 4/3/2022
sudo apt install openjdk-8-jdk
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'       

sudo apt update
sudo apt install jenkins
sudo service jenkins start
sudo service jenkins enable


sudo cat /var/lib/jenkins/secrets/initialAdminPassword