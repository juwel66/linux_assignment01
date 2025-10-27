#!/bin/bash

#Create a new user nsmed developer
#set the home directory of the user developer to /home/developer_home

sudo useradd -m -d /home/developer_home developer
echo "========== User Created ========== "
grep "developer" /etc/passwd

#Assign the sell /bin/sh to the user developer
echo "======== Developer assgin the shell /bin/sh ======== "
sudo usermod -s /bin/sh developer
grep "developer" /etc/passwd

#change the username of the user developer to devuser
echo "======== Username changed developer to devuser ======== "
sudo usermod -l devuser developer

#Add devuser to a group named devgroup
echo "======= devuser added devgroup ========"
sudo groupadd devgroup
sudo usermod -aG devgroup devuser
groups devuser

#Set password of the devuser to devpass
echo "========  Password set ========"
echo "devuser:devpass" | sudo chpasswd
